<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Response;

class JoditController extends Controller
{
    function uploaderHandler(Request $request)
    {
        foreach ($request->file("files") as $key => $value) {
            Storage::putFile("images", $value);
        }

        return Response::json([
            "info" => true,
            "messages" => "File upladed"
        ]);
    }
}
