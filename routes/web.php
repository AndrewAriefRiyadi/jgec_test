<?php

use App\Http\Controllers\StudentController;
use Illuminate\Support\Facades\Route;

Route::get('/', [StudentController::class, 'index'])->name('home');
Route::get('/student/create', [StudentController::class, 'create'])->name('student.create');
Route::get('/student/{id}', [StudentController::class, 'detail'])->name('student.detail');
Route::delete('/student/{id}', [StudentController::class, 'delete'])->name('student.delete');
