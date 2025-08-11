<?php

use App\Http\Controllers\CompanyController;
use App\Http\Controllers\SchoolController;
use App\Http\Controllers\StudentController;
use App\Models\School;
use Illuminate\Support\Facades\Route;

Route::get('/', [StudentController::class, 'index'])->name('home');
Route::get('/student/create', [StudentController::class, 'create'])->name('student.create');
Route::post('/student/create', [StudentController::class, 'insert'])->name('student.insert');
Route::get('/student/{id}', [StudentController::class, 'detail'])->name('student.detail');
Route::delete('/student/{id}', [StudentController::class, 'delete'])->name('student.delete');

Route::get('/school/create/{student_id}', [SchoolController::class, 'create'])->name('school.create');
Route::post('/school/create/{student_id}', [SchoolController::class, 'insert'])->name('school.insert');
Route::delete('/school/delete/{id}/{student_id}', [SchoolController::class, 'delete'])->name('school.delete');

Route::get('/company/create/{student_id}', [CompanyController::class, 'create'])->name('company.create');
Route::post('/company/create/{student_id}', [CompanyController::class, 'insert'])->name('company.insert');
Route::delete('/company/delete/{id}/{student_id}', [CompanyController::class, 'delete'])->name('company.delete');


Route::get('/certification/create/{student_id}', [CertificationController::class, 'create'])->name('certification.create');
Route::post('/certification/create/{student_id}', [CertificationController::class, 'insert'])->name('certification.insert');
Route::delete('/certification/delete/{id}/{student_id}', [CertificationController::class, 'delete'])->name('certification.delete');
