<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddMaxWeeklyAndHourOnMapel extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up(): void
    {
        Schema::table('mapel', function (Blueprint $table) {
            $table->integer('hour_weekly')->default(0);
            $table->integer('max_session')->default(0);
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('mapel', function (Blueprint $table) {
            $table->dropColumn(['hour_weekly']);
            $table->dropColumn(['max_session']);
        });
    }
}
