<?php

namespace App\Http\Controllers;

use App\CommentModel;
use Illuminate\Http\Request;
use App\Kurniawan\Entity\Comment;
use Illuminate\Support\Facades\Validator;

class CommentController extends Controller
{
    function createCommentHandler(Request $req)
    {
        $redirectTo = $req->query("redirect", "back");
        $validator = Validator::make($req->all(), [
            'name' => 'required|max:50',
            'article_id' => 'required',
            'url' => 'max:90',
            'comment' => 'required|max:250'
        ]);

        if ($validator->fails()) {
            if ($redirectTo == "back") {
                return back()->withErrors($validator);
            }

            return Redirect::route($redirectTo)
                ->withErrors($validator);
        }

        $item = new Comment(
            NULL,
            $req->input("article_id"),
            $req->input("name"),
            $req->input("url"),
            $req->input("comment")
        );

        $commentModel = new CommentModel();
        $info = $commentModel->createNewComment($item);
        $message = ($info) ? "Saved!" : "Failed";
        if (!empty($commentModel->getErrorMessage())) {
            $message = $commentModel->getErrorMessage();
        }

        if ($redirectTo == "back") {
            return back()->with('responseInfo', $message);
        }

        return Redirect::route($redirectTo)->with('responseInfo', $message);
    }
}
