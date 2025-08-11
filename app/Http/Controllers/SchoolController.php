<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\School;
use App\Models\Student;
use Illuminate\Http\Request;

class SchoolController extends Controller
{
    public function create($student_id){
        $student_name = Student::findOrFail($student_id)->nama;
        $schools = School::where('student_id',$student_id)->get();
        return view('school_create',compact(['schools','student_id','student_name']));
    }

    public function insert(Request $request,$student_id){
        try {
            $validatedData = $request->validate([
                'nama_sekolah' => 'required|max:255|string',
                'tahun_masuksekolah' => 'required|integer',
                'bulan_masuksekolah' => 'required|string|max:255',
                'status_sekolah' => 'required|string|in:Masuk,Lulus'
            ]);
            $validatedData['student_id'] = $student_id;
            $school = School::create($validatedData);
            return redirect()->route('school.create',$student_id)->with('success','Berhasil menambahkan riwayat sekolah');
        } catch (\Throwable $th) {
            return redirect()->back()->with('error',$th->getMessage());
        }
    }

    public function delete($id,$student_id){
        try {
            $school = School::findOrFail($id);
            $school->delete();
            return redirect()->route('school.create',$student_id)->with('success','Data riwayat sekolah berhasil dihapus!');
        } catch (\Throwable $th) {
            return redirect()->back()->with('error', $th->getMessage());
        }
    }
}
