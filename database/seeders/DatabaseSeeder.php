<?php

namespace Database\Seeders;

use App\Models\Certification;
use App\Models\Company;
use App\Models\School;
use App\Models\Student;
use App\Models\User;
// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        // Buat Murid yang memiliki 1 - 2 history sekolah, bekerja, certif
        $student_count = 50;
        Student::factory($student_count)->create()->each(function ($student) {
            $student->schools()->saveMany(
                School::factory(rand(1, 2))->make()
            );
            
            $student->companies()->saveMany(
                Company::factory(rand(1, 2))->make()
            );

            $student->certifications()->saveMany(
                Certification::factory(rand(1, 2))->make()
            );
        });
    }
}
