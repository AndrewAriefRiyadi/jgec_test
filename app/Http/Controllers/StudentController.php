<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\School;
use App\Models\Student;
use Illuminate\Http\Request;

class StudentController extends Controller
{
    public function index()
    {
        $students = Student::paginate(10);
        return view('index', compact(['students']));
    }

    public function detail($id)
    {
        try {
            $student = Student::with(['schools', 'companies', 'certifications'])->findOrFail($id);
            return view('student_detail', compact(['student']));
        } catch (\Throwable $th) {
            return redirect()->back()->with('error', "Tidak ada Student dengan ID yang diinginkan!");
        }
    }

    public function create()
    {
        return view('student_create');
    }

    public function insert(Request $request)
    {
        try {
            $validatedData = $request->validate([
                'nis' => 'required|string|max:50|unique:students,nis',
                'nama' => 'required|string|max:255',
                'gender' => 'required|in:Laki-laki,Perempuan',
                'nikah' => 'required|in:Belum Menikah,Menikah',
                'tanggal_lahir' => 'required|date|before:today',
                'umur' => 'required|integer|min:0|max:150',
                'kewarganegaraan' => 'required|string|max:255',
                'bahasa' => 'required|string|max:255',
                'domisili' => 'required|string|max:255',
                'nomor' => 'required|digits_between:10,15',
                'email' => 'required|email|max:255|unique:students,email',
                'tinggi_badan' => 'required|integer|min:30|max:250',
                'berat_badan' => 'required|integer|min:10|max:200',
                'ukuran_sepatu' => 'required|integer|min:20|max:50',
                'agama' => 'required|string|max:255',
                'kelebihan' => 'required|string|max:255',
                'kekurangan' => 'required|string|max:255',
                'promosi' => 'required|string|max:255',
                'tinggal_jp' => 'required|in:Ya,Tidak',
                'keterangan_tinggal_jp' => 'nullable|required_if:tinggal_jp,Ya|max:255',
            ]);
            $student = Student::create($validatedData);
            $student_id = $student->id;
            return redirect()->route('school.create',$student_id)->with('success','Data student berhasil dibuat!');
        } catch (\Throwable $th){
            return redirect()->back()->with('error',$th->getMessage())->withInput();
        }

    }

    public function delete($id)
    {
        try {
            $student = Student::findOrFail($id);
            $student->delete();
            return redirect()->route('home')->with('success', 'Student berhasil di hapus!');
        } catch (\Throwable $th) {
            return redirect()->back()->with('error', $th->getMessage());
        }
    }
}
