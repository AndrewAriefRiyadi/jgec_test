<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Student extends Model
{
    use HasFactory;
    protected $fillable = [
        'nis',
        'nama',
        'gender',
        'nikah',
        'tanggal_lahir',
        'umur',
        'kewarganegaraan',
        'bahasa',
        'domisili',
        'nomor',
        'email',
        'tinggi_badan',
        'berat_badan',
        'ukuran_sepatu',
        'agama',
        'kelebihan',
        'kekurangan',
        'promosi',
        'tinggal_jp',
        'keterangan_tinggal_jp',
    ];

    public function schools(){
        return $this->hasMany(School::class);
    }

    public function companies(){
        return $this->hasMany(Company::class);
    }

    public function certifications(){
        return $this->hasMany(Certification::class);
    }
}
