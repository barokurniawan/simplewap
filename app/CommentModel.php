<?php

namespace App;

use App\Kurniawan\Cache;
use App\Kurniawan\Entity\Comment;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Session;

class CommentModel extends Model
{
    protected $table = 'article_comments';
    protected $primaryKey = 'id';
    public $incrementing = true;
    public $errorMessage;

    const INTERVAL_COMMENT_LIMIT_KEY = "comment_limit_%s";

    public function getErrorMessage()
    {
        return $this->errorMessage;
    }

    public function setErrorMessage($errorMessage)
    {
        $this->errorMessage = $errorMessage;
        return $this;
    }

    public function article()
    {
        return $this->hasOne("App\BlogModel", "id", "article_id");
    }

    public function createNewComment(Comment $item)
    {
        $key = sprintf(CommentModel::INTERVAL_COMMENT_LIMIT_KEY, Session::getId());
        if (!empty(Cache::get($key))) {
            $this->setErrorMessage("Tunggu 5 menit untuk post komentar berikutnya.");
            return false;
        }

        $comment = new CommentModel;
        $comment->name = $item->getName();
        $comment->url = $item->getUrl();
        $comment->comment = $item->getComment();
        $comment->article_id = $item->getArticleId();

        Cache::add($key, true, Cache::FIVE_MINUTE);
        return $comment->save();
    }
}
