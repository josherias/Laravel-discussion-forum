<?php

namespace App;

use App\Notifications\ReplymarkedAsBestReply;

// use Illuminate\Database\Eloquent\Model; ---deleted


// this is extending the custom model in the model namespace wic disables mass asignment
class Discussion extends Model
{

    //rltnship btn user and discussion

    // we can set user to author and refernce the name of foreign key user_id 
    public function author()
    {

        return $this->belongsTo(User::class, 'user_id');
    }

    //relationship btn replies and discussion
    public function replies()
    {
        return $this->hasMany(Reply::class);
    }


    //overides what laravel usese in route model binding
    //find a specific disucssion using a spacific slug
    public function getRouteKeyName()
    {
        return 'slug'; //find disc using slug instead of id
    }

    //check if ts among best replies
    public function bestReply()
    {
        return $this->belongsTo(Reply::class, 'reply_id');
    }


    //query scope
    public function scopeFilterByChannels($builder)
    {

        if (request()->query('channel')) {
            //filter

            //find specific channel and assign it to channel variable
            $channel = Channel::where('slug', request()->query('channel'))->first();

            //if found do this //filter builder 
            if ($channel) {
                return $builder->where('channel_id', $channel->id);
            }

            //else return builder and dont modify
            return $builder;
        }


        return $builder;
    }

    public function markAsBestReply(Reply $reply)
    {
        $this->update([
            'reply_id' => $reply->id
        ]);

        // its owners comment tht s markd as best reply,dont do anthing
        if ($reply->owner->id === $this->author->id) {
            return;
        }


        //notify user wen reply marked as best --injecting discussion (----)
        $reply->owner->notify(new ReplymarkedAsBestReply($reply->discussion));
    }
}
