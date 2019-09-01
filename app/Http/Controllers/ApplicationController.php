<?php

namespace App\Http\Controllers;

use App\BlogModel;
use App\MenuModel;
use App\ShoutboxModel;
use App\Entity\QueryFilter;
use Jenssegers\Agent\Agent;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\View;

class ApplicationController extends Controller
{
    public function welcomePageHandler(Request $req)
    {
        $filter = new QueryFilter();
        $filter->setLimit(3);

        $items = [
            "page_title" => "Home page",
            "uaParser" => new Agent(),
            "list_shout" => ShoutboxModel::advanceShowList($filter),
            "bottom_list" => MenuModel::showList(),
            "new_article" => BlogModel::getNewArticle()
        ];

        return View::make("main-page.index", $items);
    }

    public function shoutboxPageHandler(Request $req)
    {
        return View::make("shoutbox.index", [
            "page_title" => "Shoutbox page"
        ]);
    }
}
