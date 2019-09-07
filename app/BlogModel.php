<?php

namespace App;

use App\Kurniawan\Entity\Blog;
use Illuminate\Database\Eloquent\Model;

class BlogModel extends Model
{
    protected $table = 'articles';
    protected $primaryKey = 'id';
    public $incrementing = true;
    public $errorMessage;

    // blog/read/(article slug).html
    const URI_SINGLE_ARTICLE = "blog/read/%s.html";
    const URI_ARTICLE_BY_CATEGORY = "category/%s.html";
    const LINK_UPDATE = "article/update/%s";
    const LINK_DELETE = "article/delete/%s";

    /**
     * Getter for ErrorMessage
     *
     * @return [type]
     */
    public function getErrorMessage()
    {
        return $this->errorMessage;
    }

    /**
     * Setter for ErrorMessage
     * @var [type] errorMessage
     *
     * @return self
     */
    public function setErrorMessage($errorMessage)
    {
        $this->errorMessage = $errorMessage;
        return $this;
    }

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
        $blogModel->category_id = $blog->getCategoryId();
        $blogModel->description = $blog->getDescription();
        $blogModel->read_count = $blog->getReadCount();
        return $blogModel->save();
    }

    public function updateArticle(int $id, Blog $blog)
    {
        $blogModel = BlogModel::find($id);
        if ($blogModel == null) {
            $this->setErrorMessage("Artikel tidak ditemukan");
            return false;
        }

        $blogModel->title = $blog->getTitle();
        $blogModel->slug = $blog->getSlug();
        $blogModel->description = $blog->getDescription();

        if ($blog->getReadCount() != null) {
            $blogModel->read_count = $blog->getReadCount();
        }

        return $blogModel->save();
    }

    public static function getArticle(string $slug)
    {
        return BlogModel::where("slug", $slug)->first();
    }

    public static function getArticleByID($article_id)
    {
        return BlogModel::find($article_id);
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

    public function deleteArticle($article_id)
    {
        $model = BlogModel::find($article_id);
        if (empty($model)) {
            $this->setErrorMessage("Gagal menghapus artikel");
            return false;
        }

        return $model->delete();
    }

    public static function getNewArticle()
    {
        return BlogModel::orderBy("created_at", "desc")->first();
    }
}
