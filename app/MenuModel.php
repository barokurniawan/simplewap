<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class MenuModel extends Model
{
    protected $table = 'menu';
    protected $primaryKey = 'id';
    public $incrementing = true;
    public $timestamps = false;

    static function showList(){
        return MenuModel::orderBy("position", "asc")->get();
    }
}
