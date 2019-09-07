<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Kurniawan\Util\YoutubeDL;
use Illuminate\Support\Facades\View;

class YoutubeDownloaderController extends Controller
{
    function indexHandler(Request $request)
    {
        $output = null;
        if (!empty($request->input("u"))) {
            $dl = new YoutubeDL($request->input("u"));
            $dl->init();
            $output = $dl->getOutput();
        }

        return View::make("youtubedl.index", [
            "page_title" => "Youtube Video to Audio",
            "youtubedl" => $output,
        ]);
    }
}
