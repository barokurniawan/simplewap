<?php

namespace App;

use App\Kurniawan\Entity\Comment;
use Illuminate\Database\Eloquent\Model;

class CommentModel extends Model
{
    protected $table = 'article_comments';
    protected $primaryKey = 'id';
    public $incrementing = true;

    public function article()
    {
        return $this->hasOne("App\BlogModel", "id", "article_id");
    }

    public function createNewComment(int $article_id, Comment $item)
    {
        $comment = new CommentModel;
        $comment->name = $item->getName();
        $comment->url = $item->getUrl();
        $comment->comment = $item->getComment();
        $comment->article_id = $item->getArticleId();

        return $comment->save();
    }
}
