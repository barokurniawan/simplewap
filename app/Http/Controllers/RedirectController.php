<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Redirect;

class RedirectController extends Controller
{
    function externalRedirectHandler(Request $r){
        $toGo = $r->get("u");
        if(empty($toGo)){
            return Redirect::back();
        }

        return Redirect::away($toGo);
    }
}
