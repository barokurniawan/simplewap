<?php

namespace App\Http\Controllers;

use App\BlogModel;
use App\MenuModel;
use App\CategoryModel;
use App\Entity\QueryFilter;
use Illuminate\Http\Request;
use App\Kurniawan\Entity\Blog;
use Illuminate\Support\Facades\View;

class BlogController extends Controller
{
    public function indexHandler(Request $r)
    {
        $output = [];
        $filter = new QueryFilter();
        $filter->setLimit(5);

        $output['articles'] = BlogModel::advanceShowList($filter);
        $output['categories'] = CategoryModel::showList();
        $output["bottom_list"] = MenuModel::showList();
        return View::make("blog.index", $output);
    }
    
    function readArticleHandler(Request $request, $slug){
        $output = [];

        $output['article'] = BlogModel::getArticle($slug);
        $output['categories'] = CategoryModel::showList();        
        return View::make("blog.readArticle", $output);
    }
}
