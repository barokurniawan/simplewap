<?php

namespace App;

use App\Kurniawan\Cache;
use Illuminate\Database\Eloquent\Model;

class SimplewapSetting extends Model
{
    protected $table = 'wap_setting';
    protected $primaryKey = 'confkey';
    public $incrementing = false;
    protected $configMap;

    const SHOWLIST_CACHE_KEY = "setting:showlist";
    const LINK_UPDATE = "dashboard/setting/update/%s";

    public static function showList()
    {
        $fromCache = Cache::get(SimplewapSetting::SHOWLIST_CACHE_KEY);
        if ($fromCache == null) {
            $items = SimplewapSetting::get();
            Cache::put(SimplewapSetting::SHOWLIST_CACHE_KEY, $items->toJson(), Cache::ONE_DAY);
            return $items;
        }

        return json_decode($fromCache);
    }

    public function initConfig()
    {
        return $this->generateMap(SimplewapSetting::showList());
    }

    private function generateMap($items)
    {
        $map = [];
        foreach ($items as $value) {
            $map[$value->confkey] = $value->confvalue;
        }

        $this->configMap = $map;
        return $this;
    }

    public function getConfigMap()
    {
        return $this->configMap;
    }

    public static function getConfig(string $key = null)
    {
        $model = new SimplewapSetting();
        $model->initConfig();

        $map = $model->getConfigMap();

        if ($key == null) {
            return $map;
        }

        return isset($map[$key]) ? $map[$key] : null;
    }
}
