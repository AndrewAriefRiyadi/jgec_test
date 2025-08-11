<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\Company;
use App\Models\Student;
use Illuminate\Http\Request;

class CompanyController extends Controller
{
    public function create($student_id)
    {
        $student_name = Student::findOrFail($student_id)->nama;
        $companies = Company::where('student_id', $student_id)->get();

        return view('company_create', compact(['companies', 'student_id', 'student_name']));
    }

    public function insert(Request $request, $student_id)
    {
        try {
            $validatedData = $request->validate([
                'nama_perusahaan' => 'required|max:255|string',
                'tahun_masukperusahaan' => 'required|integer',
                'bulan_masukperusahaan' => 'required|string|max:255',
                'status' => 'required|string|in:Masuk,Berhenti'
            ]);

            $validatedData['student_id'] = $student_id;
            Company::create($validatedData);
            return redirect()->route('company.create', $student_id)->with('success', 'Berhasil menambahkan riwayat pekerjaan');
        } catch (\Throwable $th) {
            return redirect()->back()->with('error', $th->getMessage())->withInput();
        }
    }

    public function delete($id, $student_id)
    {
        try {
            $company = Company::findOrFail($id);
            $company->delete();

            return redirect()->route('company.create', $student_id)->with('success', 'Data riwayat pekerjaan berhasil dihapus!');
        } catch (\Throwable $th) {
            return redirect()->back()->with('error', $th->getMessage());
        }
    }
}
