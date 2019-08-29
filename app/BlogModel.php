<?php

namespace App;

use App\Kurniawan\Entity\Blog;
use Illuminate\Support\Facades\DB;
use Illuminate\Database\Eloquent\Model;

class BlogModel extends Model
{
    protected $table = 'articles';
    protected $primaryKey = 'id';
    public $incrementing = true;

    public static function getTable()
    {
        return $this->table;
    }

    public function category()
    {
        return $this->hasOne("App\CategoryModel", "category_id", "category_id");
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

    static function advanceShowList(\App\Entity\QueryFilter $filter)
    {
        $output = BlogModel::orderBy("created_at", "asc")
            ->simplePaginate($filter->getLimit());
        return $output;
    }
}
