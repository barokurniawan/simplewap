<?php

namespace App;

use App\Kurniawan\Cache;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Session;

class ShoutboxModel extends Model
{
    protected $table = 'shout';
    protected $primaryKey = 'id';
    public $incrementing = true;
    public $timestamps = false;
    public $errorMessage;

    const INTERVAL_COMMENT_LIMIT_KEY = "shout_limit_%s";

    function setErrorMessage($messsage)
    {
        return $this->errorMessage = $messsage;
    }

    function getErrorMessage()
    {
        return $this->errorMessage;
    }

    public function add(\App\Entity\ShoutboxEntity $item)
    {
        $key = sprintf(ShoutboxModel::INTERVAL_COMMENT_LIMIT_KEY, Session::getId());
        if (!empty(Cache::get($key))) {
            $this->setErrorMessage("Tunggu 5 menit untuk post berikutnya.");
            return false;
        }

        $shout = new ShoutboxModel;
        $shout->time = $item->getTime();
        $shout->name = $item->getName();
        $shout->url = $item->getUrl();
        $shout->text = $item->getText();
        $shout->icon = $item->getIcon();
        $shout->ua = $item->getUa();
        $shout->ip = $item->getIp();

        Cache::add($key, true, Cache::FIVE_MINUTE);
        return $shout->save();
    }

    static function advanceShowList(\App\Entity\QueryFilter $filter)
    {
        $output = ShoutboxModel::where("name", "like", "%" . $filter->getSearch() . "%")
            ->orderBy("time", "desc")
            ->simplePaginate($filter->getLimit());
        return $output;
    }
}
