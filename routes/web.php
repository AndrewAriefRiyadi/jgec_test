<?php

use App\Http\Controllers\SchoolController;
use App\Http\Controllers\StudentController;
use Illuminate\Support\Facades\Route;

Route::get('/', [StudentController::class, 'index'])->name('home');
Route::get('/student/create', [StudentController::class, 'create'])->name('student.create');
Route::post('/student/create', [StudentController::class, 'insert'])->name('student.insert');
Route::get('/student/{id}', [StudentController::class, 'detail'])->name('student.detail');
Route::delete('/student/{id}', [StudentController::class, 'delete'])->name('student.delete');

Route::get('/school/create/{student_id}', [SchoolController::class, 'create'])->name('school.create');