<?php

namespace App\Http\Controllers;

use App\BlogModel;
use App\MenuModel;
use App\CategoryModel;
use App\Entity\QueryFilter;
use Illuminate\Http\Request;
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

    function articleByCategoryHandler(Request $request, $slug)
    {
        $article_id = CategoryModel::getCategoryIdBySlug($slug);
        if ($article_id == null) {
            return redirect('home')->withErrors('Kategori tidak ditemukan');
        }

        $output = [];
        $filter = new QueryFilter();
        $filter->setLimit(5);
        $filter->setWhereClause([
            ["category_id", "=", $article_id]
        ]);

        $output['articles'] = BlogModel::advanceShowList($filter);
        $output['categories'] = CategoryModel::showList();
        $output["bottom_list"] = MenuModel::showList();
        return View::make("blog.index", $output);
    }

    function readArticleHandler(Request $request, $slug)
    {
        $output = [];
        $output['article'] = BlogModel::getArticle($slug);
        $output['categories'] = CategoryModel::showList();
        $output["bottom_list"] = MenuModel::showList();

        return View::make("blog.readArticle", $output);
    }
}
