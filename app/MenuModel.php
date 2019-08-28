<?php

namespace App;

use App\Kurniawan\Cache;
use Illuminate\Database\Eloquent\Model;

class MenuModel extends Model
{
    const SHOWLIST_CACHE_KEY = "showlist";
    protected $table = 'menu';
    protected $primaryKey = 'id';
    public $incrementing = true;
    public $timestamps = false;

    static function showList(){
        $fromCache = Cache::get(MenuModel::SHOWLIST_CACHE_KEY);
        if ($fromCache == null){
            $items = MenuModel::orderBy("position", "asc")->get();
            Cache::put(MenuModel::SHOWLIST_CACHE_KEY, $items->toJson(), Cache::ONE_DAY);
            return $items;
        }

        return json_decode($fromCache);
    }
}
