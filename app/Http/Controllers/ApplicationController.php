<?php

namespace App\Http\Controllers;

use App\ShoutboxModel;
use App\Entity\QueryFilter;
use App\MenuModel;
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
            "uaParser" => new Agent(),
            "list_shout" => ShoutboxModel::advanceShowList($filter),
            "bottom_list" => MenuModel::showList()
        ];

        return View::make("main-page.index", $items);
    }

    public function shoutboxPageHandler(Request $req)
    {
        return View::make("shoutbox.index");
    }
}
