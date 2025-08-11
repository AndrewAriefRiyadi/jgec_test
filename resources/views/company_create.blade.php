<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Create Company</title>
    @vite(['resources/css/app.css', 'resources/js/app.js'])
</head>

<body class="bg-[#FDFDFC] text-[#1b1b18] flex p-16 flex-col">

    @if (session('success'))
        <div class="bg-green-800 text-white px-2 py-2 mb-4 rounded">
            <p>{{ session('success') }}</p>
        </div>
    @endif
    @if (session('error'))
        <div class="bg-red-900 text-white px-2 py-2 mb-4 rounded">
            <p>Terjadi Kesalahan: {{ session('error') }}</p>
        </div>
    @endif

    <div class="w-full shadow p-8">
        <div class="mb-6 flex justify-between">
            <a href="{{ url()->previous() }}"
                class="inline-block px-4 py-2 bg-gray-200 rounded hover:bg-gray-300 transition">
                ← Kembali
            </a>
            <a href="{{route('certif.create',$student_id)}}"
                class="inline-block px-4 py-2 bg-gray-200 rounded hover:bg-gray-300 transition">
                ← Selanjutnya
            </a>
        </div>

        <h1 class=" text-2xl font-semibold underline text-center">Riwayat Perusahaan {{ $student_name }}</h1>
        <div class=" flex justify-center">
            @if ($companies->isEmpty())
                <h1 class=" text-2xl font-semibold text-red-500 my-4">Belum mempunyai riwayat perusahaan!</h1>
            @else
                <table class="table-auto lg:min-w-2xl my-4">
                    <thead>
                        <tr>
                            <th class="p-2">No</th>
                            <th>Nama Perusahaan</th>
                            <th>Tahun Masuk</th>
                            <th>Bulan Masuk</th>
                            <th>Status</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($companies as $company)
                            <tr class="odd:bg-white even:bg-gray-100 hover:bg-gray-200 transition-colors">
                                <td class="text-center p-2">{{ $loop->iteration }}</td>
                                <td class="text-center p-2">{{ $company->nama_perusahaan }}</td>
                                <td class="text-center p-2">{{ $company->tahun_masukperusahaan }}</td>
                                <td class="text-center p-2">{{ $company->bulan_masukperusahaan }}</td>
                                <td class="text-center p-2">{{ $company->status}}</td>
                                <td class="text-center">
                                    <form action="{{ route('company.delete', [$company->id, $student_id]) }}"
                                        method="POST" onsubmit="return confirm('Yakin ingin menghapus?')">
                                        @csrf
                                        @method('DELETE')
                                        <button type="submit"
                                            class="group relative p-1 text-white bg-red-600 rounded-lg hover:bg-red-700 focus:outline-none focus:ring-2 focus:ring-red-400">
                                            <svg xmlns="http://www.w3.org/2000/svg" class="w-5 h-5" fill="none"
                                                viewBox="0 0 24 24" stroke="currentColor" stroke-width="2">
                                                <path stroke-linecap="round" stroke-linejoin="round"
                                                    d="M6 18L18 6M6 6l12 12" />
                                            </svg>
                                            <span
                                                class="absolute bottom-full left-1/2 -translate-x-1/2 mb-1 hidden group-hover:block whitespace-nowrap text-xs bg-gray-800 text-white rounded px-2 py-1">
                                                Delete
                                            </span>
                                        </button>
                                    </form>
                                </td>
                            </tr>
                        @endforeach
                    </tbody>
                </table>
            @endif
        </div>
        <h1 class="text-2xl font-semibold mb-6 underline">Tambah Data Perusahaan</h1>
        <form action="#" method="POST"
            class="space-y-4 grid lg:grid-cols-2 gap-x-6">
            @csrf

            <!-- Nama Perusahaan -->
            <div>
                <label class="block mb-1 font-semibold">Nama Perusahaan</label>
                <input type="text" name="nama_perusahaan"
                    class="w-full bg-gray-100 p-2 rounded hover:bg-gray-300 placeholder-shown:border placeholder-shown:border-red-500"
                    placeholder="PT Maju Jaya" maxlength="255" required>
            </div>

            <!-- Tahun Masuk -->
            <div>
                <label class="block mb-1 font-semibold">Tahun Masuk</label>
                <input type="number" name="tahun_masukperusahaan"
                    class="w-full bg-gray-100 p-2 rounded hover:bg-gray-300 placeholder-shown:border placeholder-shown:border-red-500"
                    placeholder="2018" max="{{ date('Y') }}" required>
            </div>

            <!-- Bulan Masuk -->
            <div>
                <label class="block mb-1 font-semibold">Bulan Masuk</label>
                <select name="bulan_masukperusahaan"
                    class="w-full bg-gray-100 p-2 rounded hover:bg-gray-300 placeholder-shown:border placeholder-shown:border-red-500"
                    required>
                    @foreach (['Januari', 'Februari', 'Maret', 'April', 'Mei', 'Juni', 'Juli', 'Agustus', 'September', 'Oktober', 'November', 'Desember'] as $bulan)
                        <option value="{{ $bulan }}">{{ $bulan }}</option>
                    @endforeach
                </select>
            </div>

            <!-- Status Kerja -->
            <div>
                <label class="block mb-1 font-semibold">Status Kerja</label>
                <select name="status"
                    class="w-full bg-gray-100 p-2 rounded hover:bg-gray-300 placeholder-shown:border placeholder-shown:border-red-500"
                    required>
                    <option value="Masuk">Masuk</option>
                    <option value="Berhenti">Berhenti</option>
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
