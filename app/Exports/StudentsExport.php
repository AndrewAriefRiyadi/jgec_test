<?php

namespace App\Exports;

use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;
use Illuminate\Support\Collection;
use App\Models\Student;

class StudentsExport implements FromCollection, WithHeadings
{
    protected $students;

    public function __construct(Collection $students)
    {
        $this->students = $students;
    }

    public function collection()
    {
        return $this->students->map(function ($student) {
            return [
                'NIS' => $student->nis,
                'Nama' => $student->nama,
                'Gender' => $student->gender,
                'Nikah' => $student->nikah,
                'Tanggal Lahir' => $student->tanggal_lahir,
                'Umur' => $student->umur,
                'Kewarganegaraan' => $student->kewarganegaraan,
                'Bahasa' => $student->bahasa,
                'Domisili' => $student->domisili,
                'Nomor' => $student->nomor,
                'Email' => $student->email,
                'Tinggi Badan' => $student->tinggi_badan,
                'Berat Badan' => $student->berat_badan,
                'Ukuran Sepatu' => $student->ukuran_sepatu,
                'Agama' => $student->agama,
                'Kelebihan' => $student->kelebihan,
                'Kekurangan' => $student->kekurangan,
                'Promosi' => $student->promosi,
                'Tinggal JP' => $student->tinggal_jp,
                'Keterangan Tinggal JP' => $student->keterangan_tinggal_jp,
            ];
        });
    }

    public function headings(): array
    {
        return [
            'NIS',
            'Nama',
            'Gender',
            'Nikah',
            'Tanggal Lahir',
            'Umur',
            'Kewarganegaraan',
            'Bahasa',
            'Domisili',
            'Nomor',
            'Email',
            'Tinggi Badan',
            'Berat Badan',
            'Ukuran Sepatu',
            'Agama',
            'Kelebihan',
            'Kekurangan',
            'Promosi',
            'Tinggal JP',
            'Keterangan Tinggal JP',
        ];
    }

}
