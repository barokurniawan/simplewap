<?php

namespace App;

use App\Kurniawan\Cache;
use Illuminate\Database\Eloquent\Model;

class CategoryModel extends Model
{
    protected $table = 'article_category';
    protected $primaryKey = 'category_id';
    public $incrementing = true;

    const SHOWLIST_CACHE_KEY = "article:category";

    public function articles()
    {
        return $this->hasMany("App\BlogModel", "category_id", "category_id");
    }

    public static function showList()
    {
        $fromCache = Cache::get(CategoryModel::SHOWLIST_CACHE_KEY);
        if (empty($fromCache)) {
            $items = CategoryModel::orderBy("category_name", "asc")
                ->get();
            $arrayData = [];

            foreach ($items as $i => $item) {
                $arr = [];
                $arr = $item->toArray();
                $arr['articles'] = $item->articles->toArray();

                array_push($arrayData, $arr);
            }

            Cache::put(CategoryModel::SHOWLIST_CACHE_KEY, json_encode($arrayData), Cache::ONE_HOUR);
            return $items;
        }

        return json_decode($fromCache);
    }
}
