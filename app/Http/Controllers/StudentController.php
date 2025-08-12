<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\School;
use App\Models\Student;
use Illuminate\Http\Request;
use Carbon\Carbon;

use Maatwebsite\Excel\Facades\Excel;
use App\Exports\StudentsExport;
use Barryvdh\DomPDF\Facade\Pdf;

class StudentController extends Controller
{
    public function index(Request $request)
    {
        // Mulai query builder untuk model Student (atau sesuaikan modelnya)
        $query = Student::query();

        // Filter Nama (LIKE)
        if ($request->filled('nama')) {
            $query->where('nama', 'like', '%' . $request->nama . '%');
        }

        // Filter Gender (exact match)
        if ($request->filled('gender')) {
            $query->where('gender', $request->gender);
        }

        // Filter Umur range
        if ($request->filled('umur_min')) {
            $query->where('umur', '>=', (int) $request->umur_min);
        }
        if ($request->filled('umur_max')) {
            $query->where('umur', '<=', (int) $request->umur_max);
        }

        // Filter Kewarganegaraan (LIKE)
        if ($request->filled('kewarganegaraan')) {
            $query->where('kewarganegaraan', 'like', '%' . $request->kewarganegaraan . '%');
        }

        // Filter Bahasa (LIKE)
        if ($request->filled('bahasa')) {
            $query->where('bahasa', 'like', '%' . $request->bahasa . '%');
        }

        // Filter Nomor (LIKE)
        if ($request->filled('nomor')) {
            $query->where('nomor', 'like', '%' . $request->nomor . '%');
        }

        // PAGINATION
        $perPage = (int) $request->input('pagination', 10);

        if ($perPage === 0) {
            $perPage = 9999999; // ambil semua
        }

        $students = $query->paginate($perPage)->withQueryString();
        return view('index', compact('students'));
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

    public function cv($id){
        try {
            $student = Student::with(['schools', 'companies', 'certifications'])->findOrFail($id);
            $pdf = Pdf::loadView('cv',compact('student'))->setPaper('a4','portrait');
            // return $pdf->stream('cv.pdf');
            return view('cv', compact(['student']));
            
        } catch (\Throwable $th) {
            return redirect()->back()->with('error', $th->getMessage());
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
            return redirect()->route('school.create', $student_id)->with('success', 'Data student berhasil dibuat!');
        } catch (\Throwable $th) {
            return redirect()->back()->with('error', $th->getMessage())->withInput();
        }
    }

    public function edit($id)
    {
        try {
            $student = Student::findOrFail($id);
            return view('student_update', compact(['student']));
        } catch (\Throwable $th) {
            return redirect()->back()->with('error', $th->getMessage())->withInput();
        }
    }
    public function update(Request $request, $id)
    {
        try {
            $student = Student::findOrFail($id);

            $validatedData = $request->validate([
                'nis' => 'required|string|max:50|unique:students,nis,' . $student->id,
                'nama' => 'required|string|max:255',
                'gender' => 'required|in:Laki-laki,Perempuan',
                'nikah' => 'required|in:Belum Menikah,Menikah',
                'tanggal_lahir' => 'required|date|before:today',
                'umur' => 'required|integer|min:0|max:150',
                'kewarganegaraan' => 'required|string|max:255',
                'bahasa' => 'required|string|max:255',
                'domisili' => 'required|string|max:255',
                'nomor' => 'required|digits_between:10,15',
                'email' => 'required|email|max:255|unique:students,email,' . $student->id,
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
            $student->update($validatedData);

            return redirect()->route('student.detail', $student->id)->with('success', 'Data student berhasil diperbarui!');
        } catch (\Throwable $th) {
            return redirect()->back()->with('error', $th->getMessage())->withInput();
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

    public function export(Request $request)
    {
        $query = Student::query();

        if ($request->filled('nama')) {
            $query->where('nama', 'like', '%' . $request->nama . '%');
        }
        if ($request->filled('gender')) {
            $query->where('gender', $request->gender);
        }
        if ($request->filled('umur_min')) {
            $query->where('umur', '>=', $request->umur_min);
        }
        if ($request->filled('umur_max')) {
            $query->where('umur', '<=', $request->umur_max);
        }
        if ($request->filled('kewarganegaraan')) {
            $query->where('kewarganegaraan', 'like', '%' . $request->kewarganegaraan . '%');
        }
        if ($request->filled('bahasa')) {
            $query->where('bahasa', 'like', '%' . $request->bahasa . '%');
        }
        if ($request->filled('nomor')) {
            $query->where('nomor', 'like', '%' . $request->nomor . '%');
        }

        $students = $query->get();

        $tanggal = Carbon::now()->format('Y_m_d'); // format tanggal YYYY_MM_DD

        return Excel::download(new StudentsExport($students), "data_siswa_{$tanggal}.xlsx");
    }
}
