<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class generateData extends Model
{
    protected $fillable = ['data'];

    protected $table = 'generator_data';
}
