<?php

namespace App\Http\Controllers;

use App\MenuModel;
use App\CategoryModel;
use App\Entity\QueryFilter;
use Illuminate\Http\Request;
use App\Kurniawan\Entity\Menu;
use App\Kurniawan\Entity\Category;
use Illuminate\Support\Facades\View;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Support\Facades\Validator;

class PanelController extends Controller
{
    function dashboardHandler(Request $request)
    {
        $item = [
            "page_title" => "Dashboard",
            "bottom_list" => MenuModel::showList(),
        ];

        return View::make("dashboard.index", $item);
    }

    function masterCategoryHandler(Request $request)
    {
        $filter = new QueryFilter();
        $filter->setLimit(10);

        $items = [
            "page_title" => "Master Kategori",
            "list_category" => CategoryModel::advanceShowList($filter)
        ];

        return View::make("dashboard.master-category", $items);
    }

    function masterMenuHandler(Request $request)
    {
        $filter = new QueryFilter();
        $filter->setLimit(10);

        $items = [
            "page_title" => "Master Menu",
            "list_menu" => MenuModel::advanceShowList($filter)
        ];

        return View::make("dashboard.master-menu", $items);
    }

    function createMenuHandler(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'type'      =>  'required',
            'name'      =>  'required',
            'url'       =>  'required',
            'position'  =>  'required',
        ]);

        if ($validator->fails()) {
            return Redirect::back()->withErrors($validator);
        }

        $model = new MenuModel;
        $info = $model->createMenu(new Menu(
            null,
            $request->input('type'),
            $request->input("name"),
            $request->input("url"),
            $request->input("position")
        ));

        if ($info) {
            return Redirect::back()->with("resultInfo", "Menu baru berhasil ditambahkan");
        }

        return Redirect::back()->withErrors("Gagal menambahkan menu");
    }

    function deleteCategoryHandler($category_id)
    {
        $info = CategoryModel::deleteCategory($category_id);
        if ($info) {
            return Redirect::back();
        }

        return Redirect::back()->withErrors("Gagal menghapus kategori");
    }

    function updateCategoryHandler($category_id)
    {
        $category = CategoryModel::getCategoryByID($category_id);
        if (empty($category)) {
            return Redirect::back()->withErrors("Kategori tidak ditemukan");
        }

        return View::make("dashboard.edit-master-category", [
            "category" => $category
        ]);
    }

    function actionUpdateCategoryHandler(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'category_name' => 'required|max:32',
            'category_slug' => 'required|max:70',
            'category_id' => 'required',
        ]);

        if ($validator->fails()) {
            return Redirect::back()->withErrors($validator);
        }

        $category = new Category();
        $category->setCategoryId($request->input("category_id"));
        $category->setCategoryName($request->input("category_name"));
        $category->setCategorySlug($request->input("category_slug"));

        $model = new CategoryModel;
        $info = $model->updateCategory($category->getCategoryId(), $category);
        if ($info == false) {
            return Redirect::back()->withErrors("Gagal update categori");
        }

        return Redirect::route("master_category");
    }

    function createCategoryHandler(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'category_name' => 'required|max:32',
            'category_slug' => 'required|max:70',
        ]);

        if ($validator->fails()) {
            return Redirect::back()->withErrors($validator);
        }

        $model = new CategoryModel();
        $info = $model->createCategory(new Category(
            null,
            $request->input("category_name"),
            $request->input("category_slug")
        ));

        if ($info) {
            return Redirect::back();
        }

        return Redirect::back()->withErrors("Tidak bisa menambahkan kategori");
    }
}
