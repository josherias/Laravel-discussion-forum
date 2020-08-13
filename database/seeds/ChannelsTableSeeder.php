<?php

use App\Channel;
use Illuminate\Database\Seeder;

use Illuminate\Support\Str;

class ChannelsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Channel::create([


            'name' => 'Larvel 5.8',
            'slug' => Str::slug('Larvel 5.8', '-') //generate a url friendly slug

        ]);



        Channel::create([


            'name' => 'Vue js 3',
            'slug' => Str::slug('Vue js 3', '-') //generate a url friendly slug

        ]);




        Channel::create([


            'name' => 'Angular 7',
            'slug' => Str::slug('Angular 7', '-') //generate a url friendly slug

        ]);


        Channel::create([


            'name' => 'Node js',
            'slug' => Str::slug('Node js', '-') //generate a url friendly slug

        ]);
    }
}
