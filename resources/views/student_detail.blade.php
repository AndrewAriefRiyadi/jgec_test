<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Detail Student</title>
    @vite(['resources/css/app.css', 'resources/js/app.js'])
</head>

<body class="bg-[#FDFDFC] text-[#1b1b18] p-8">
    @if (session('success'))
        <div class="bg-red-900 text-white px-2 py-2 mb-4 rounded">
            <p> {{ session('success') }}</p>
        </div>
    @endif
    @if (session('error'))
        <div class="bg-red-900 text-white px-2 py-2 mb-4 rounded">
            <p>Terjadi Kesalahan: {{ session('error') }}</p>
        </div>
    @endif
    <div class="max-w-3xl mx-auto bg-white rounded-lg shadow p-6">
        <div class="flex justify-between h-fit  ">
            <h1 class="text-2xl font-bold mb-4">{{ $student->nama }}</h1>
            <div class="flex space-x-2 ">
                {{-- Tombol Edit --}}
                <a href="#"
                    class="group relative p-2 h-fit text-white bg-yellow-500 rounded-lg hover:bg-yellow-600 focus:outline-none focus:ring-2 focus:ring-yellow-300">
                    <svg xmlns="http://www.w3.org/2000/svg" class="w-5 h-5" fill="none" viewBox="0 0 24 24"
                        stroke="currentColor" stroke-width="2">
                        <path stroke-linecap="round" stroke-linejoin="round"
                            d="M15.232 5.232l3.536 3.536M9 13l6-6 3.536 3.536L12 16H9v-3z" />
                    </svg>
                    <span
                        class="absolute bottom-full left-1/2 -translate-x-1/2 mb-1 hidden group-hover:block whitespace-nowrap text-xs bg-gray-800 text-white rounded px-2 py-1">
                        Edit
                    </span>
                </a>


                {{-- Tombol Delete --}}
                <form action="{{ route('student.delete', $student->id) }}" method="POST"
                    onsubmit="return confirm('Yakin ingin menghapus?')">
                    @csrf
                    @method('DELETE')
                    <button type="submit"
                        class="group relative p-2 text-white bg-red-600 rounded-lg hover:bg-red-700 focus:outline-none focus:ring-2 focus:ring-red-400">
                        <svg xmlns="http://www.w3.org/2000/svg" class="w-5 h-5" fill="none" viewBox="0 0 24 24"
                            stroke="currentColor" stroke-width="2">
                            <path stroke-linecap="round" stroke-linejoin="round" d="M6 18L18 6M6 6l12 12" />
                        </svg>
                        <span
                            class="absolute bottom-full left-1/2 -translate-x-1/2 mb-1 hidden group-hover:block whitespace-nowrap text-xs bg-gray-800 text-white rounded px-2 py-1">
                            Delete
                        </span>
                    </button>
                </form>
            </div>
        </div>


        <div class="grid grid-cols-2 gap-4">
            <div><span class="font-semibold">NIS:</span> {{ $student->nis }}</div>
            <div><span class="font-semibold">Nama:</span> {{ $student->nama }}</div>
            <div><span class="font-semibold">Gender:</span> {{ $student->gender }}</div>
            <div><span class="font-semibold">Status Nikah:</span> {{ $student->nikah }}</div>
            <div><span class="font-semibold">Tanggal Lahir:</span> {{ $student->tanggal_lahir }}</div>
            <div><span class="font-semibold">Umur:</span> {{ $student->umur }}</div>
            <div><span class="font-semibold">Kewarganegaraan:</span> {{ $student->kewarganegaraan }}</div>
            <div><span class="font-semibold">Bahasa:</span> {{ $student->bahasa }}</div>
            <div><span class="font-semibold">Domisili:</span> {{ $student->domisili }}</div>
            <div><span class="font-semibold">Nomor:</span> {{ $student->nomor }}</div>
            <div><span class="font-semibold">Email:</span> {{ $student->email }}</div>
            <div><span class="font-semibold">Tinggi Badan:</span> {{ $student->tinggi_badan }} cm</div>
            <div><span class="font-semibold">Berat Badan:</span> {{ $student->berat_badan }} kg</div>
            <div><span class="font-semibold">Ukuran Sepatu:</span> {{ $student->ukuran_sepatu }}</div>
            <div><span class="font-semibold">Agama:</span> {{ $student->agama }}</div>
            <div><span class="font-semibold">Kelebihan:</span> {{ $student->kelebihan }}</div>
            <div><span class="font-semibold">Kekurangan:</span> {{ $student->kekurangan }}</div>
            <div><span class="font-semibold">Promosi:</span> {{ $student->promosi }}</div>
            <div><span class="font-semibold">Tinggal JP:</span> {{ $student->tinggal_jp }}</div>
            <div><span class="font-semibold">Keterangan Tinggal JP:</span> {{ $student->keterangan_tinggal_jp }}</div>
        </div>

        <hr class="my-6">

        <!-- Sekolah -->
        <h2 class="text-xl font-semibold mb-2 underline">Riwayat Sekolah</h2>
        @forelse ($student->schools as $school)
            <div class="mb-2">
                <p class="font-medium">{{ $school->nama_sekolah }}</p>
                <p class="text-sm text-gray-600">{{ $school->bulan_masuksekolah }} {{ $school->tahun_masuksekolah }} -
                    {{ $school->status_sekolah }}</p>
            </div>
        @empty
            <p class="text-gray-500">Tidak ada data sekolah</p>
        @endforelse

        <!-- Perusahaan -->
        <h2 class="text-xl font-semibold mt-6 mb-2 underline">Riwayat Pekerjaan</h2>
        @forelse ($student->companies as $company)
            <div class="mb-2">
                <p class="font-medium">{{ $company->nama_perusahaan }}</p>
                <p class="text-sm text-gray-600">{{ $company->bulan_masukperusahaan }}
                    {{ $company->tahun_masukperusahaan }} - {{ $company->status }}</p>
            </div>
        @empty
            <p class="text-gray-500">Tidak ada data pekerjaan</p>
        @endforelse

        <!-- Sertifikat -->
        <h2 class="text-xl font-semibold mt-6 mb-2 underline">Sertifikasi</h2>
        @forelse ($student->certifications as $certif)
            <div class="mb-2">
                <p class="font-medium">{{ $certif->nama_certif }}</p>
                <p class="text-sm text-gray-600">{{ $certif->bulan }} {{ $certif->tahun }}</p>
            </div>
        @empty
            <p class="text-gray-500">Tidak ada data sertifikasi</p>
        @endforelse


        <div class="mt-6">
            <a href="{{ url()->previous() }}" class="inline-block px-4 py-2 bg-gray-200 rounded hover:bg-gray-300">
                ← Kembali
            </a>
        </div>
    </div>

</body>

</html>
