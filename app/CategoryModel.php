<?php

namespace App;

use App\Kurniawan\Cache;
use App\Kurniawan\Entity\Category;
use Illuminate\Database\Eloquent\Model;

class CategoryModel extends Model
{
    protected $table = 'article_category';
    protected $primaryKey = 'category_id';
    public $incrementing = true;

    const SHOWLIST_CACHE_KEY = "article:category";
    const LINK_DELETE = "dashboard/master-category/delete/%s";
    const LINK_UPDATE = "dashboard/master-category/update/%s";

    public function articles()
    {
        return $this->hasMany("App\BlogModel", "category_id", "category_id");
    }

    public function createCategory(Category $item)
    {
        $category = new CategoryModel;
        $category->category_name = $item->getCategoryName();
        $category->category_slug = $item->getCategorySlug();

        return $category->save();
    }

    public static function getCategoryIdBySlug(string $slug)
    {
        $item = CategoryModel::where("category_slug", "=", $slug)->first();
        if ($item == null) {
            return null;
        }

        return $item->category_id;
    }

    public static function getCategoryBySlug(string $slug)
    {
        $item = CategoryModel::where("category_slug", "=", $slug)->first();
        if ($item == null) {
            return null;
        }

        return $item;
    }

    public static function advanceShowList(\App\Entity\QueryFilter $filter)
    {
        $bm = new CategoryModel;
        if ($filter->getWhereClause() != null) {
            $bm = $bm::where($filter->getWhereClause());
        }

        $output = $bm->orderBy("created_at", "desc")->simplePaginate($filter->getLimit());
        return $output;
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

    public static function deleteCategory($category_id)
    {
        $item = CategoryModel::find($category_id);
        return $item->delete();
    }
}
