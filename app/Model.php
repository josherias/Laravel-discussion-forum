<?php

namespace App;

use Illuminate\Database\Eloquent\Model as BaseModel;

class Model extends BaseModel
{


    //tels laravel tht this is a list of all fields  that shud be mass assignment protected
    protected $guarded = [];
}
