<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class JamAjar extends Model
{
    protected $fillable = ['date'];

    protected $table = 'jam_ajar';
}
