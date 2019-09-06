<?php

namespace App;

use App\Kurniawan\Cache;
use App\Kurniawan\Entity\Menu;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Redirect;

class MenuModel extends Model
{
    protected $table = 'menu';
    protected $primaryKey = 'id';
    public $incrementing = true;
    private $errorMessage;

    const SHOWLIST_CACHE_KEY = "showlist";
    const LINK_UPDATE = "dashboard/master-menu/update/%s";
    const LINK_DELETE = "dashboard/master-menu/delete/%s";

    function setErrorMessage($message)
    {
        return $this->errorMessage = $message;
    }

    function getErrorMessage()
    {
        return $this->errorMessage;
    }

    function createMenu(Menu $item)
    {
        $menu = new MenuModel;
        $menu->type = $item->getType();
        $menu->name = $item->getName();
        $menu->url = $item->getUrl();
        $menu->position = $item->getPosition();
        $menu->icon = $item->getIcon();

        return $menu->save();
    }

    function updateMenu($menu_id, Menu $item)
    {
        $model = MenuModel::find($menu_id);
        if (empty($model)) {
            $this->setErrorMessage("Menu tidak ditemukan");
            return false;
        }

        $model->name = $item->getName();
        $model->url = $item->getUrl();
        $model->type = $item->getType();
        $model->position = $item->getPosition();

        return $model->save();
    }

    static function getMenuByID($menu_id)
    {
        $menu = MenuModel::find($menu_id);
        return $menu;
    }

    function deleteMenu($menu_id)
    {
        $menu = MenuModel::find($menu_id);
        if (empty($menu)) {
            $this->setErrorMessage("Menu tidak ditemukan");
            return false;
        }

        return $menu->delete();
    }

    static function showList()
    {
        $fromCache = Cache::get(MenuModel::SHOWLIST_CACHE_KEY);
        if ($fromCache == null) {
            $items = MenuModel::orderBy("position", "asc")->get();
            Cache::put(MenuModel::SHOWLIST_CACHE_KEY, $items->toJson(), Cache::ONE_DAY);
            return $items;
        }

        return json_decode($fromCache);
    }

    public static function advanceShowList(\App\Entity\QueryFilter $filter)
    {
        $model = new MenuModel;
        if ($filter->getWhereClause() != null) {
            $model = $model::where($filter->getWhereClause());
        }

        $output = $model->orderBy("position", "asc")->simplePaginate($filter->getLimit());
        return $output;
    }
}
