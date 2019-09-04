<?php

namespace App\Http\Controllers;

use App\MenuModel;
use App\CategoryModel;
use App\Entity\QueryFilter;
use Illuminate\Http\Request;
use App\Kurniawan\Entity\Category;
use Illuminate\Support\Facades\View;
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

    function createCategoryHandler(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'category_name' => 'required|max:32',
            'category_slug' => 'required|max:70',
        ]);

        if ($validator->fails()) {
            return back()->withErrors($validator);
        }

        $model = new CategoryModel();
        $info = $model->createCategory(new Category(
            null,
            $request->input("category_name"),
            $request->input("category_slug")
        ));

        if ($info) {
            return back();
        }

        return back()->withErrors("Tidak bisa menambahkan kategori");
    }
}
