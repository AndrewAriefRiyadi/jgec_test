<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('students', function (Blueprint $table) {
            $table->id();
            $table->timestamps();
            $table->string("nis");
            $table->string("nama")->nullable();
            $table->string("gender")->nullable();
            $table->string("nikah")->nullable();
            $table->date("tanggal_lahir")->nullable();
            $table->string("umur")->nullable();
            $table->string("kewarganegaraan")->nullable();
            $table->string("bahasa")->nullable();
            $table->string("domisili")->nullable();
            $table->string("nomor")->nullable();
            $table->string("email")->nullable();
            $table->integer("tinggi_badan")->nullable();
            $table->integer("berat_badan")->nullable();
            $table->integer("ukuran_sepatu")->nullable();
            $table->string("agama")->nullable();
            $table->string("kelebihan")->nullable();
            $table->string("kekurangan")->nullable();
            $table->string("promosi")->nullable();
            $table->string("tinggal_jp")->nullable();
            $table->string("keterangan_tinggal_jp")->nullable();
        });
    }


    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('students');
    }
};
