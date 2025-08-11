<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Students</title>

    <!-- Fonts -->
    <link rel="preconnect" href="https://fonts.bunny.net">
    <link href="https://fonts.bunny.net/css?family=instrument-sans:400,500,600" rel="stylesheet" />

    @vite(['resources/css/app.css', 'resources/js/app.js'])

</head>

<body class="bg-[#FDFDFC] text-[#1b1b18] flex p-16 flex-col">
    <h1 class=" text-2xl mb-1 text-center font-bold">Students</h1>
    <a href="{{route('student.create')}}"
        class="group relative inline-flex self-center w-fit justify-center px-2 py-1 mb-6 text-white bg-blue-600 rounded-lg hover:bg-blue-700 focus:outline-none focus:ring-2 focus:ring-blue-400 focus:ring-offset-1">
        Create
    </a>
    @if (session('success'))
        <div class="bg-green-800 text-white px-2 py-2 mb-4 rounded">
            <p> {{ session('success') }}</p>
        </div>
    @endif
    @if (session('error'))
        <div class="bg-red-900 text-white px-2 py-2 mb-4 rounded">
            <p>Terjadi Kesalahan: {{ session('error') }}</p>
        </div>
    @endif

    <table class="table-auto w-full  ">
        <thead>
            <tr class=" ">
                <th>No</th>
                <th>Nama</th>
                <th>Gender</th>
                <th>Umur</th>
                <th>Kewarganegaraan</th>
                <th>Bahasa</th>
                <th>Nomor</th>
                <th>Action</th>

            </tr>
        </thead>
        <tbody>
            @foreach ($students as $student)
                <tr class="odd:bg-white even:bg-gray-100 hover:bg-gray-200 transition-colors">
                    <td class="py-1 px-2 text-center">
                        {{ $loop->iteration + ($students->currentPage() - 1) * $students->perPage() }}
                    </td>

                    <td class="px-2 text-center">{{ $student->nama }}</td>
                    <td class="px-2 text-center">{{ $student->gender }}</td>
                    <td class="text-center">{{ $student->umur }}</td>
                    <td class="text-center">{{ $student->kewarganegaraan }}</td>
                    <td class="px-2 text-center">{{ $student->bahasa }}</td>
                    <td class="px-2 text-center">{{ $student->nomor }}</td>
                    <td class="py-1 flex justify-center">
                        <a href="{{ route('student.detail', $student->id) }}"
                            class="group relative inline-flex items-center justify-center p-2 text-white bg-blue-600 rounded-lg hover:bg-blue-700 focus:outline-none focus:ring-2 focus:ring-blue-400 focus:ring-offset-1">

                            <!-- Ikon mata (lihat detail) -->
                            <svg xmlns="http://www.w3.org/2000/svg" class="w-5 h-5" fill="none" viewBox="0 0 24 24"
                                stroke="currentColor" stroke-width="2">
                                <path stroke-linecap="round" stroke-linejoin="round"
                                    d="M15 12a3 3 0 11-6 0 3 3 0 016 0z" />
                                <path stroke-linecap="round" stroke-linejoin="round"
                                    d="M2.458 12C3.732 7.943 7.523 5 12 5c4.477 0 8.268 2.943 9.542 7-1.274 4.057-5.065 7-9.542 7-4.477 0-8.268-2.943-9.542-7z" />
                            </svg>

                            <!-- Tooltip -->
                            <span
                                class="absolute bottom-full mb-1 hidden group-hover:block whitespace-nowrap text-xs bg-gray-800 text-white rounded px-2 py-1">
                                Lihat Detail
                            </span>
                        </a>
                    </td>

                </tr>
            @endforeach
        </tbody>
    </table>
    <span class=" pt-4 w-full">{{ $students->links() }}</span>


</body </html>
