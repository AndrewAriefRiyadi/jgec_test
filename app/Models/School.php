<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class School extends Model
{
    use HasFactory;

    protected $fillable = [
        'student_id',
        'nama_sekolah',
        'tahun_masuksekolah',
        'bulan_masuksekolah',
        'status_sekolah',
    ];

    
    public function student()
    {
        return $this->belongsTo(Student::class);
    }
}
