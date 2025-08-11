<?php

namespace App\Http\Controllers;

use App\Models\Certification;
use App\Models\Student;
use Illuminate\Http\Request;

class CertificationController extends Controller
{
    public function create($student_id)
    {
        $student_name = Student::findOrFail($student_id)->nama;
        $certifications = Certification::where('student_id', $student_id)->get();
        return view('certif_create', compact('certifications', 'student_id', 'student_name'));
    }

    public function insert(Request $request, $student_id)
    {
        try {
            $validatedData = $request->validate([
                'nama_certif' => 'required|string|max:255',
                'tahun' => 'required|integer|min:1900|max:' . date('Y'),
                'bulan' => 'required|string|max:20',
            ]);
            $validatedData['student_id'] = $student_id;
            Certification::create($validatedData);
            return redirect()->route('certification.create', $student_id)->with('success', 'Certification berhasil ditambahkan.');
        } catch (\Throwable $th) {
            return redirect()->back()->with('error', $th->getMessage())->withInput();
        }
    }

    public function delete($id, $student_id)
    {
        try {
            Certification::findOrFail($id)->delete();
            return redirect()->route('certif.create', $student_id)->with('success', 'Certification berhasil dihapus!');
        } catch (\Throwable $th) {
            return redirect()->back()->with('error', $th->getMessage())->withInput();
        }
        
    }
}
