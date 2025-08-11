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
        <div class="bg-red-900 text-white px-2 py-2 mb-4 rounded">
            <p>Terjadi Kesalahan: {{ session('error') }}</p>
        </div>
    @endif
    <div class="container py-5">
        <div class="card shadow">
            <div class="card-header">
                <h4>Step 1: Data Student</h4>
            </div>
            <div class="card-body">
                <form action="/step2" method="POST">
                    @csrf

                    <div class="mb-3">
                        <label for="name" class="form-label">Nama Lengkap</label>
                        <input type="text" id="name" name="name" class="form-control"
                            placeholder="Masukkan nama lengkap" required>
                    </div>

                    <div class="mb-3">
                        <label for="birth_date" class="form-label">Tanggal Lahir</label>
                        <input type="date" id="birth_date" name="birth_date" class="form-control" required>
                    </div>

                    <div class="mb-3">
                        <label for="email" class="form-label">Email</label>
                        <input type="email" id="email" name="email" class="form-control"
                            placeholder="Masukkan email" required>
                    </div>

                    <div class="mb-3">
                        <label for="phone" class="form-label">No. Telepon</label>
                        <input type="text" id="phone" name="phone" class="form-control"
                            placeholder="Masukkan nomor telepon" required>
                    </div>

                    <div class="mb-3">
                        <label for="address" class="form-label">Alamat</label>
                        <textarea id="address" name="address" class="form-control" rows="3" placeholder="Masukkan alamat lengkap"
                            required></textarea>
                    </div>

                    <div class="d-flex justify-content-end">
                        <button type="submit" class="btn btn-primary">Next &raquo;</button>
                    </div>
                </form>
            </div>
        </div>
    </div>

</body>

</html>
