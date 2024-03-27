<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class jam_ajar extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('jam_ajar')->insert([
            'id' => 1,
            'date' => '07:00-08:30',
            'created_at' => date('Y-m-d H:i:s'),
            'updated_at' => date('Y-m-d H:i:s')
        ]);
        DB::table('jam_ajar')->insert([
            'id' => 2,
            'date' => '08:30-10:00',
            'created_at' => date('Y-m-d H:i:s'),
            'updated_at' => date('Y-m-d H:i:s')
        ]);
        DB::table('jam_ajar')->insert([
            'id' => 3,
            'date' => '10:00-11:30',
            'created_at' => date('Y-m-d H:i:s'),
            'updated_at' => date('Y-m-d H:i:s')
        ]);
        DB::table('jam_ajar')->insert([
            'id' => 4,
            'date' => '12:30-14:00',
            'created_at' => date('Y-m-d H:i:s'),
            'updated_at' => date('Y-m-d H:i:s')
        ]);
    }
}
