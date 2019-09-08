<?php

namespace App;

use App\Kurniawan\Cache;
use Illuminate\Database\Eloquent\Model;

class SimplewapSetting extends Model
{
    protected $table = 'wap_setting';
    protected $primaryKey = 'confkey';
    public $incrementing = false;
    public $errorMessage;
    protected $configMap;
    private static $instance;

    const SHOWLIST_CACHE_KEY = "setting:showlist";
    const LINK_UPDATE = "dashboard/setting/update/%s";

    public function __construct()
    {
        $fromCache = Cache::get(SimplewapSetting::SHOWLIST_CACHE_KEY);
        if ($fromCache == null) {
            $items = SimplewapSetting::get();
            Cache::put(SimplewapSetting::SHOWLIST_CACHE_KEY, $items->toJson(), Cache::ONE_DAY);
            $this->generateMap($items);
        } else {
            $this->generateMap(json_decode($fromCache));
        }
    }

    public static function singleton()
    {
        if (!isset(self::$instance)) {
            self::$instance = new SimplewapSetting();
        }

        return self::$instance;
    }

    public function getConfigMap()
    {
        return $this->configMap;
    }

    public static function getConfig(string $key = null)
    {
        $model = SimplewapSetting::singleton();
        $map = $model->getConfigMap();

        if ($key == null) {
            return $map;
        }

        return isset($map[$key]) ? $map[$key] : null;
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
}
