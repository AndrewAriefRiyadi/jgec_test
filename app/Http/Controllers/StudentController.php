<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
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
            $student = Student::with(['schools','companies','certifications'])->findOrFail($id);
            return view('student_detail', compact(['student']));
        } catch (\Throwable $th) {
            return redirect()->back()->with('error',"Tidak ada Student dengan ID yang diinginkan!");
        }
    }

    public function create(){
        return view('student_create');
    }

    public function delete($id)
    {
        try {
            $student = Student::findOrFail($id);
            $student->delete();
            return redirect()->route('home')->with('success','Student berhasil di hapus!');
        } catch (\Throwable $th) {
            return redirect()->back()->with('error',$th->getMessage());
        }
    }
}
