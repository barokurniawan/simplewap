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

        $output["page_title"] = "Blog page";
        $output['articles'] = BlogModel::advanceShowList($filter);
        $output['categories'] = CategoryModel::showList();
        $output["bottom_list"] = MenuModel::showList();
        return View::make("blog.index", $output);
    }

    function articleByCategoryHandler(Request $request, $slug)
    {
        $category = CategoryModel::getCategoryBySlug($slug);
        if ($category == null) {
            return redirect('home')->withErrors('Kategori tidak ditemukan');
        }

        $output = [];
        $filter = new QueryFilter();
        $filter->setLimit(5);
        $filter->setWhereClause([
            ["category_id", "=", $category->category_id]
        ]);

        $output["page_title"] = sprintf("Kategori artikel %s", $category->category_name);
        $output['articles'] = BlogModel::advanceShowList($filter);
        $output['categories'] = CategoryModel::showList();
        $output["bottom_list"] = MenuModel::showList();
        return View::make("blog.index", $output);
    }

    function readArticleHandler(Request $request, $slug)
    {
        $article = BlogModel::getArticle($slug);
        if ($article == null) {
            return redirect('home')->withErrors("Artikel tidak ditemukan");
        }

        $output = [];
        $output['article'] = $article;
        $output['categories'] = CategoryModel::showList();
        $output["bottom_list"] = MenuModel::showList();
        $output["page_title"] = $article->title;

        return View::make("blog.readArticle", $output);
    }
}
