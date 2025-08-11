<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Create Student</title>
    @vite(['resources/css/app.css', 'resources/js/app.js'])
</head>

<body class="bg-[#FDFDFC] text-[#1b1b18] flex p-16 flex-col">
    @if (session('success'))
        <div class="bg-red-900 text-white px-2 py-2 mb-4 rounded">
            <p> {{ session('success') }}</p>
        </div>
    @endif
    @if (session('error'))
        <div class="bg-green-800 text-white px-2 py-2 mb-4 rounded">
            <p>Terjadi Kesalahan: {{ session('error') }}</p>
        </div>
    @endif
    @if (session('success'))
        <div class="bg-green-700 text-white px-2 py-2 mb-4 rounded">
            <p>{{ session('success') }}</p>
        </div>
    @endif
    @if (session('error'))
        <div class="bg-red-700 text-white px-2 py-2 mb-4 rounded">
            <p>Terjadi Kesalahan: {{ session('error') }}</p>
        </div>
    @endif

    <div class="w-full shadow p-8">
        <div class="mb-6 flex justify-between">
            <a href="{{ url()->previous() }}"
                class="inline-block px-4 py-2 bg-gray-200 rounded hover:bg-gray-300 transition">
                ← Kembali
            </a>
            <a href="#"
                class="inline-block px-4 py-2 bg-gray-200 rounded hover:bg-gray-300 transition">
                ← Selanjutnya
            </a>
        </div>
        <h1 class="text-2xl font-semibold mb-6 underline">Tambah Data Sekolah</h1>

        <form action="/schools/create" method="POST" class="space-y-4 grid lg:grid-cols-2 gap-x-6">
            @csrf

            <!-- Pilih Student -->
            <input type="hidden" name="student_id" value="{{$student_id}}">

            <!-- Nama Sekolah -->
            <div>
                <label class="block mb-1 font-semibold">Nama Sekolah</label>
                <input type="text" name="nama_sekolah" class="w-full bg-gray-100 p-2 rounded hover:bg-gray-300"
                    placeholder="SMK Negeri 1 Jakarta" required>
            </div>

            <!-- Tahun Masuk -->
            <div>
                <label class="block mb-1 font-semibold">Tahun Masuk</label>
                <input type="number" name="tahun_masuksekolah" class="w-full bg-gray-100 p-2 rounded hover:bg-gray-300"
                    placeholder="2018" min="1900" max="{{ date('Y') }}" required>
            </div>

            <!-- Bulan Masuk -->
            <div>
                <label class="block mb-1 font-semibold">Bulan Masuk</label>
                <select name="bulan_masuksekolah" class="w-full bg-gray-100 p-2 rounded hover:bg-gray-300" required>
                    <option value="">-- Pilih Bulan --</option>
                    @foreach (['Januari', 'Februari', 'Maret', 'April', 'Mei', 'Juni', 'Juli', 'Agustus', 'September', 'Oktober', 'November', 'Desember'] as $bulan)
                        <option value="{{ $bulan }}">{{ $bulan }}</option>
                    @endforeach
                </select>
            </div>

            <!-- Status Sekolah -->
            <div>
                <label class="block mb-1 font-semibold">Status Sekolah</label>
                <select name="status_sekolah" class="w-full bg-gray-100 p-2 rounded hover:bg-gray-300" required>
                    <option value="">-- Pilih Status --</option>
                    <option value="Lulus">Lulus</option>
                    <option value="Belum Lulus">Belum Lulus</option>
                    <option value="Sedang Berjalan">Sedang Berjalan</option>
                </select>
            </div>

            <!-- Submit -->
            <div class="pt-4">
                <button type="submit" class="bg-blue-600 text-white px-4 py-2 rounded hover:bg-blue-800 transition">
                    Simpan
                </button>
            </div>
        </form>
    </div>
</body>

</html>
