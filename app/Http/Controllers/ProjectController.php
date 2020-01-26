<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use App\Project;
use Illuminate\Support\Facades\Auth; 
use Session;

class ProjectController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $project = Project::get()->toArray();
        return view('/project/index',compact('project'));
    }

    public function create(Request $request){

        $user = Auth::user();

        $validator = \Validator::make($request->all(), [
            'title' => 'required|max:255'
        ]);

        if ($validator->fails()) {
            return redirect('project')->withErrors($validator)->withInput();
        }else{
            $input['title'] = $request->title;  
            $input['user_id'] = $user->id;
            $input['status'] = 1;
           if(Project::create($input)){
                Session::flash('message', 'This is a message!');
                Session::flash('alert-class', 'alert-success'); 
                Session::flash('sub-text', 'Success'); 
           }
           return redirect('project'); 
        }

     
        
    }
}
