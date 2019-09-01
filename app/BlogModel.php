<?php

namespace App;

use App\Kurniawan\Entity\Blog;
use Illuminate\Database\Eloquent\Model;

class BlogModel extends Model
{
    protected $table = 'articles';
    protected $primaryKey = 'id';
    public $incrementing = true;

    // blog/read/(article slug).html
    const URI_SINGLE_ARTICLE = "blog/read/%s.html";
    const URI_ARTICLE_BY_CATEGORY = "category/%s.html";

    public function category()
    {
        return $this->hasOne("App\CategoryModel", "category_id", "category_id");
    }

    public function comments()
    {
        return $this->hasMany("App\CommentModel", "article_id", "id");
    }

    public function createArticle(Blog $blog)
    {
        $blogModel = new BlogModel;
        $blogModel->title = $blog->getTitle();
        $blogModel->slug = $blog->getSlug();
        $blogModel->description = $blog->getDescription();
        $blogModel->read_count = $blog->getReadCount();
        return $blogModel->save();
    }

    public function updateArticle(int $id, Blog $blog)
    {
        $blogModel = BlogModel::find($id);
        $blogModel->title = $blog->getTitle();
        $blogModel->slug = $blog->getSlug();
        $blogModel->description = $blog->getDescription();
        $blogModel->read_count = $blog->getReadCount();
        return $blogModel->save();
    }

    public static function getArticle(string $slug)
    {
        return BlogModel::where("slug", $slug)->first();
    }

    public static function advanceShowList(\App\Entity\QueryFilter $filter)
    {
        $bm = new BlogModel;
        if ($filter->getWhereClause() != null) {
            $bm = $bm::where($filter->getWhereClause());
        }

        $output = $bm->orderBy("created_at", "desc")->orderBy("id", "desc")->simplePaginate($filter->getLimit());
        return $output;
    }

    public static function getNewArticle()
    {
        return BlogModel::orderBy("created_at", "desc")->first();
    }
}
