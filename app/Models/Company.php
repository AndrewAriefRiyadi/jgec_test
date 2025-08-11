<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Company extends Model
{
    use HasFactory;

    protected $fillable = [
        'student_id',
        'nama_perusahaan',
        'tahun_masukperusahaan',
        'bulan_masukperusahaan',
        'status',
    ];

    
    public function student()
    {
        return $this->belongsTo(Student::class);
    }
}
