<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\School;
use Illuminate\Http\Request;

class SchoolController extends Controller
{
    public function create($student_id){
        $schools = School::where('student_id','==',$student_id);
        return view('school_create',compact(['schools','student_id']));
    }
}
