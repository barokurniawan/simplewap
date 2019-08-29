<?php

namespace App\Http\Controllers;

use App\BlogModel;
use App\CategoryModel;
use App\Entity\QueryFilter;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\View;

class BlogController extends Controller
{
    public function indexHandler(Request $r)
    {
        print_r(BlogModel::getTable());
        exit;
        $output = [];
        $filter = new QueryFilter();
        $filter->setLimit(5);

        $output['articles'] = BlogModel::advanceShowList($filter);
        $output['categories'] = CategoryModel::showList();
        return View::make("blog.index", $output);
    }
}
