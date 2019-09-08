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

        $page_description = "";
        $page_keyword = "";
        if (!empty($output)) {
            $page_description = "Down load lagu " . $output['metadata']['title'] . " youtube ke mp3 audio";
            $page_keyword = "Down load lagu " . $output['metadata']['title'] . " youtube ke mp3 audio";
        }

        return View::make("youtubedl.index", [
            "page_title" => "Youtube Video to Audio",
            "youtubedl" => $output,
            "page_description" => $page_description,
            "page_keyword" => $page_keyword
        ]);
    }
}
