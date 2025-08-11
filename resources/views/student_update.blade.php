<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Update Student</title>
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
        <div class="mb-6">
            <a href="{{ url()->previous() }}"
                class="inline-block px-4 py-2 bg-gray-200 rounded hover:bg-gray-300 transition">
                ← Kembali
            </a>
        </div>

        <h1 class="text-2xl font-semibold mb-6 underline">Update Student</h1>

        <form action="{{ route('student.update', $student->id) }}" method="POST"
            class="space-y-4 grid lg:grid-cols-2 gap-x-6 ">
            @csrf
            @method('PUT')

            <div>
                <label class="block mb-1 font-semibold">NIS</label>
                <input type="text" name="nis" value="{{ old('nis', $student->nis) }}"
                    class="w-full bg-gray-100 p-2 rounded hover:bg-gray-300 transition placeholder-shown:bg-gray-200 placeholder-shown:border placeholder-shown:border-red-500"
                    placeholder="12345678" required>
            </div>

            <div>
                <label class="block mb-1 font-semibold">Nama</label>
                <input type="text" name="nama" value="{{ old('nama', $student->nama) }}"
                    class="w-full bg-gray-100 p-2 rounded hover:bg-gray-300 transition placeholder-shown:bg-gray-200 placeholder-shown:border placeholder-shown:border-red-500"
                    placeholder="Andrew Arief Riyadi" required>
            </div>

            <div>
                <label class="block mb-1 font-semibold">Gender</label>
                <select name="gender"
                    class="w-full bg-gray-100 p-2 rounded hover:bg-gray-300 transition placeholder-shown:bg-gray-200 placeholder-shown:border placeholder-shown:border-red-500"
                    required>
                    <option value="Laki-laki" {{ old('gender', $student->gender) == 'Laki-laki' ? 'selected' : '' }}>
                        Laki-laki</option>
                    <option value="Perempuan" {{ old('gender', $student->gender) == 'Perempuan' ? 'selected' : '' }}>
                        Perempuan</option>
                </select>
            </div>

            <div>
                <label class="block mb-1 font-semibold">Status Pernikahan</label>
                <select name="nikah"
                    class="w-full bg-gray-100 p-2 rounded hover:bg-gray-300 transition placeholder-shown:bg-gray-200 placeholder-shown:border placeholder-shown:border-red-500"
                    required>
                    <option value="Belum Menikah"
                        {{ old('nikah', $student->nikah) == 'Belum Menikah' ? 'selected' : '' }}>Belum Menikah</option>
                    <option value="Menikah" {{ old('nikah', $student->nikah) == 'Menikah' ? 'selected' : '' }}>Menikah
                    </option>
                </select>
            </div>

            <div>
                <label class="block mb-1 font-semibold">Tanggal Lahir</label>
                <input type="date" name="tanggal_lahir" value="{{ old('tanggal_lahir', $student->tanggal_lahir) }}"
                    class="w-full bg-gray-100 p-2 rounded hover:bg-gray-300 transition placeholder-shown:bg-gray-200 invalid:border invalid:border-red-500"
                    required max="{{ date('Y-m-d') }}">
            </div>

            <div>
                <label class="block mb-1 font-semibold">Umur</label>
                <input type="number" name="umur" value="{{ old('umur', $student->umur) }}"
                    class="w-full bg-gray-100 p-2 rounded hover:bg-gray-300 transition placeholder-shown:bg-gray-200 placeholder-shown:border placeholder-shown:border-red-500"
                    placeholder="22" required min="1" oninput="if(this.value < 0) this.value = 0">
            </div>

            <div>
                <label class="block mb-1 font-semibold">Kewarganegaraan</label>
                <input type="text" name="kewarganegaraan"
                    value="{{ old('kewarganegaraan', $student->kewarganegaraan) }}"
                    class="w-full bg-gray-100 p-2 rounded hover:bg-gray-300 transition placeholder-shown:bg-gray-200 placeholder-shown:border placeholder-shown:border-red-500"
                    placeholder="Indonesia" required>
            </div>

            <div>
                <label class="block mb-1 font-semibold">Bahasa</label>
                <input type="text" name="bahasa" value="{{ old('bahasa', $student->bahasa) }}"
                    class="w-full bg-gray-100 p-2 rounded hover:bg-gray-300 transition placeholder-shown:bg-gray-200 placeholder-shown:border placeholder-shown:border-red-500"
                    placeholder="Jepang" required>
            </div>

            <div>
                <label class="block mb-1 font-semibold">Domisili</label>
                <input type="text" name="domisili" value="{{ old('domisili', $student->domisili) }}"
                    class="w-full bg-gray-100 p-2 rounded hover:bg-gray-300 transition placeholder-shown:bg-gray-200 placeholder-shown:border placeholder-shown:border-red-500"
                    placeholder="DKI Jakarta" required>
            </div>

            <div>
                <label class="block mb-1 font-semibold">Nomor Telepon</label>
                <input type="text" name="nomor" value="{{ old('nomor', $student->nomor) }}"
                    class="w-full bg-gray-100 p-2 rounded hover:bg-gray-300 transition placeholder-shown:bg-gray-200 placeholder-shown:border placeholder-shown:border-red-500"
                    placeholder="0821123412" pattern="[0-9]+" required>
            </div>

            <div>
                <label class="block mb-1 font-semibold">Email</label>
                <input type="email" name="email" value="{{ old('email', $student->email) }}"
                    class="w-full bg-gray-100 p-2 rounded hover:bg-gray-300 transition placeholder-shown:bg-gray-200 placeholder-shown:border placeholder-shown:border-red-500"
                    placeholder="otwjepang@gmail.com" required>
            </div>

            <div>
                <label class="block mb-1 font-semibold">Tinggi Badan (cm)</label>
                <input type="number" name="tinggi_badan" value="{{ old('tinggi_badan', $student->tinggi_badan) }}"
                    class="w-full bg-gray-100 p-2 rounded hover:bg-gray-300 transition placeholder-shown:bg-gray-200 placeholder-shown:border placeholder-shown:border-red-500"
                    placeholder="185" min="30" required oninput="if(this.value < 0) this.value = 0">
            </div>

            <div>
                <label class="block mb-1 font-semibold">Berat Badan (kg)</label>
                <input type="number" name="berat_badan" value="{{ old('berat_badan', $student->berat_badan) }}"
                    class="w-full bg-gray-100 p-2 rounded hover:bg-gray-300 transition placeholder-shown:bg-gray-200 placeholder-shown:border placeholder-shown:border-red-500"
                    placeholder="60" min="10" required oninput="if(this.value < 0) this.value = 0">
            </div>

            <div>
                <label class="block mb-1 font-semibold">Ukuran Sepatu</label>
                <input type="number" name="ukuran_sepatu"
                    value="{{ old('ukuran_sepatu', $student->ukuran_sepatu) }}"
                    class="w-full bg-gray-100 p-2 rounded hover:bg-gray-300 transition placeholder-shown:bg-gray-200 placeholder-shown:border placeholder-shown:border-red-500"
                    placeholder="39" min="20" required oninput="if(this.value < 0) this.value = 0">
            </div>

            <div>
                <label class="block mb-1 font-semibold">Agama</label>
                <input type="text" name="agama" value="{{ old('agama', $student->agama) }}"
                    class="w-full bg-gray-100 p-2 rounded hover:bg-gray-300 transition placeholder-shown:bg-gray-200 placeholder-shown:border placeholder-shown:border-red-500"
                    placeholder="Islam" required>
            </div>

            <div>
                <label class="block mb-1 font-semibold">Kelebihan</label>
                <input type="text" name="kelebihan" value="{{ old('kelebihan', $student->kelebihan) }}"
                    class="w-full bg-gray-100 p-2 rounded hover:bg-gray-300 transition placeholder-shown:bg-gray-200 placeholder-shown:border placeholder-shown:border-red-500"
                    placeholder="Mudah beradaptasi, Suka belajar ..." required>
            </div>

            <div>
                <label class="block mb-1 font-semibold">Kekurangan</label>
                <input type="text" name="kekurangan" value="{{ old('kekurangan', $student->kekurangan) }}"
                    class="w-full bg-gray-100 p-2 rounded hover:bg-gray-300 transition placeholder-shown:bg-gray-200 placeholder-shown:border placeholder-shown:border-red-500"
                    placeholder="Emosional, ..." required>
            </div>

            <div>
                <label class="block mb-1 font-semibold">Promosi</label>
                <textarea name="promosi"
                    class="w-full bg-gray-100 p-2 rounded hover:bg-gray-300 transition placeholder-shown:bg-gray-200 py-1 px-2 placeholder-shown:border placeholder-shown:border-red-500"
                    maxlength="255" placeholder="Saya orangnya suka belajar.." required>{{ old('promosi', $student->promosi) }}</textarea>
            </div>

            <div>
                <label class="block mb-1 font-semibold">Pernah Tinggal di JP?</label>
                <select name="tinggal_jp" id="tinggal_jp"
                    class="w-full bg-gray-100 p-2 rounded hover:bg-gray-300 transition placeholder-shown:bg-gray-200 placeholder-shown:border placeholder-shown:border-red-500">
                    <option value="Tidak" {{ old('tinggal_jp', $student->tinggal_jp) == 'Tidak' ? 'selected' : '' }}>
                        Tidak</option>
                    <option value="Ya" {{ old('tinggal_jp', $student->tinggal_jp) == 'Ya' ? 'selected' : '' }}>Ya
                    </option>
                </select>
            </div>

            <div>
                <label class="block mb-1 font-semibold">Keterangan Tinggal di JP</label>
                <input type="text" name="keterangan_tinggal_jp" id="keterangan_tinggal_jp"
                    value="{{ old('keterangan_tinggal_jp', $student->keterangan_tinggal_jp) }}"
                    class="w-full bg-gray-100 p-2 rounded hover:bg-gray-300 transition" maxlength="255"
                    placeholder="Bekerja selama 1 tahun..">
            </div>

            <div class="pt-4">
                <button type="submit" class="bg-blue-600 text-white px-4 py-2 rounded hover:bg-blue-800 transition">
                    Update
                </button>
            </div>
        </form>
    </div>

    <script>
        document.addEventListener('DOMContentLoaded', function() {
            const selectJP = document.getElementById('tinggal_jp');
            const inputKet = document.getElementById('keterangan_tinggal_jp');

            function toggleRequired() {
                if (selectJP.value === 'Ya') {
                    inputKet.setAttribute('required', true);
                    inputKet.classList.add('border', 'border-red-500');
                } else {
                    inputKet.removeAttribute('required');
                    inputKet.classList.remove('border', 'border-red-500');
                }
            }

            selectJP.addEventListener('change', toggleRequired);
            toggleRequired();
        });
    </script>
</body>

</html>
