<?php

namespace App;
// use Illuminate\Database\Eloquent\Model; ---deleted


// this is extending the custom model in the model namespace wic disables mass asignment

class Reply extends Model
{


    //relationship definiton btn user and reply
    public function owner()
    {
        return $this->belongsTo(User::class, 'user_id');
    }



    //relationship definiton btn discussion and reply
    public function discussion()
    {
        return $this->belongsTo(Discussion::class);
    }
}
