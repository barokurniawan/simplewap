<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class CategoryModel extends Model
{
    protected $table = 'article_category';
    protected $primaryKey = 'category_id';
    public $incrementing = true;

    public function articles()
    {
        return $this->hasMany("App\BlogModel", "category_id", "category_id");
    }

    public static function showList()
    {
        return CategoryModel::orderBy("category_name", "asc")
            ->get();
    }
}
