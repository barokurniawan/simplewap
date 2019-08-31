<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ShoutboxModel extends Model
{
    protected $table = 'shout';
    protected $primaryKey = 'id';
    public $incrementing = true;
    public $timestamps = false;

    static function add(\App\Entity\ShoutboxEntity $item)
    {
        $shout = new ShoutboxModel;
        $shout->time = $item->getTime();
        $shout->name = $item->getName();
        $shout->url = $item->getUrl();
        $shout->text = $item->getText();
        $shout->icon = $item->getIcon();
        $shout->ua = $item->getUa();
        $shout->ip = $item->getIp();

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
