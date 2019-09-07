<?php

namespace App\Http\Controllers;

use App\BlogModel;
use App\CategoryModel;
use Illuminate\Http\Request;
use App\Kurniawan\Entity\Blog;
use Illuminate\Support\Facades\View;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Support\Facades\Validator;

class ArticleController extends Controller
{
    function composerHandler(Request $request)
    {
        $items = [
            "page_title" => "Tulis artikel",
            "list_category" => CategoryModel::showList()
        ];

        return View::make("dashboard.article-composer", $items);
    }


    function actionCreateArticleHandler(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'title' => 'required|max:120',
            'description' => 'required|max:70',
            'category_id' => 'required',
        ]);

        if ($validator->fails()) {
            return Redirect::back()->withErrors($validator);
        }

        $model = new BlogModel();
        $info = $model->createArticle(new Blog(
            null,
            strtolower(str_replace(" ", "-", $request->input("title"))),
            $request->input("title"),
            $request->input("category_id"),
            $request->input("description"),
            0
        ));

        if (!$info) {
            return Redirect::back()->withErrors("Gagal menambahkan artikel");
        }

        return Redirect::back()->with("responseInfo", "Artikel berhasil ditambahkan");
    }
}
