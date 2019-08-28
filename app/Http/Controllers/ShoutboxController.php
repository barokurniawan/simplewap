<?php

namespace App\Http\Controllers;

use App\Entity\QueryFilter;
use App\ShoutboxModel;
use Illuminate\Http\Request;
use App\Entity\ShoutboxEntity;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Support\Facades\Validator;
use Jenssegers\Agent\Agent;

class ShoutboxController extends Controller
{
    function createShoutHandler(Request $req)
    {
        $redirectTo = $req->query("redirect", "welcome_page");
        $validator = Validator::make($req->all(), [
            'name' => 'required|max:15',
            'text' => 'required|max:140',
            'icon' => 'required',
        ]);

        if ($validator->fails()) {
            return Redirect::route($redirectTo)
                ->withErrors($validator);
        }

        $item = new ShoutboxEntity(
            null,
            strtotime(date("Y-m-d H:i:s")),
            $req->input("name"),
            $req->input("url"),
            $req->input("text"),
            $req->input("icon"),
            $req->header('User-Agent'),
            $req->getClientIp()
        );

        $info = ShoutboxModel::add($item);
        $message = ($info) ? "Saved!" : "Failed";
        return Redirect::route($redirectTo)->with('responseInfo', $message);
    }

    function indexHandler(){
        $filter = new QueryFilter();
        $filter->setLimit(8);

        $items = [
            "uaParser" => new Agent(),
            "list_shout" => ShoutboxModel::advanceShowList($filter)
        ];

        return view("shoutbox.index", $items);
    }
}
