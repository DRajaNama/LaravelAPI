@extends('layouts.app')

@section('content')
<div class="main-page">
<div class="row">
    <div class="col-lg-12">
        <div class="row">
            <div class="col-lg-6">
                <h2>Projects</h2>
                <p>Manage all projects modified and add</p>
            </div>
            <div class="col-lg-6">
            <button type="button" class="btn btn-outline-primary pull-right" data-toggle="modal" data-target="#addProject">Add Project</button>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-4">
                <div class="form-group form-group-2 has-default">
                    <select class="form-control form-control-shadow" placeholder="Default">
                        <option value="">All Project</option>
                        <option value="added">Recently Added Project</option>
                        <option value="weakly">Weakly Added Project</option>
                        <option value="monthly">Monthly Added Project</option>
                    </select>
                </div>
            </div>
           
            <div class="col-lg-4">
                <div class="form-group form-group-2">
                    <input type="text" id="text" class="form-control" placeholder="Search...">
                    </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12 ">
                <table class="table">
                    <thead>
                        <tr>
                            <th>
                                <input type="checkbox">
                            </th>
                            <th>
                                Project Title
                                <i class="fa fa-sort"></i>
                                <!-- <i class="fa fa-sort-desc"></i> -->
                            </th>
                            <th>
                                Created Date
                                <i class="fa fa-sort"></i>
                            </th>
                            <th>
                                Contacts
                                <i class="fa fa-sort"></i>
                            </th>
                            <th>
                                Sent Mail
                                <i class="fa fa-sort"></i>
                            </th>
                            <th>
                                Opened Mail
                                <i class="fa fa-sort"></i>
                            </th>
                            <th>
                                Action
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php foreach($project as $key=>$val){ ?>
                        <tr>
                            <td>
                                <input type="checkbox" id="<?php echo $val['id']; ?>">
                            </td>
                            <td><?php echo $val['title']; ?></td>
                            <td><?php echo $val['created_at']; ?></td>
                            <td>8543</td>
                            <td>99999</td>
                            <td>99999</td>
                            <td>
                                <button type="button" class="btn btn-outline-dark" title="Edit" data-toggle="modal" data-target="#editProject"><i class="fa fa-pencil"></i></button>
                                <button type="button" class="btn btn-outline-dark" title="View"><i class="fa fa-eye"></i></button>
                                <button type="button" class="btn btn-outline-dark" title="Delete"><i class="fa fa-trash"></i></button>
                                <button type="button" class="btn btn-outline-dark" title="Reports"><i class="fa fa-bar-chart"></i></button>
                            </td>
                        </tr>
                        <?php } ?>
                    </tbody>
                </table> 
            </div>
        </div>
        <div class="row">
            <div class="col-lg-2">   
                <div class="form-group form-group-2 has-default">
                    <select class="form-control form-control-shadow" placeholder="Default">
                        <option value="10">10</option>
                        <option value="20">20</option>
                        <option value="30">30</option>
                        <option value="40">40</option>
                    </select>
                </div>
            </div>
            <div class="col-lg-4 pt-3">   
                <h6>Showing 1 to 10 of Records</h6>
            </div>
            <div class="col-lg-6">   
                <div class="pagination ">
                    <a href="#" class="page-link">Previous</a>
                    <a href="#" class="page-link">1</a>
                    <a href="#" class="page-link active">2</a>
                    <a href="#" class="page-link">3</a>
                    <a href="#" class="page-link">4</a>
                    <a href="#" class="page-link">5</a>
                    <a href="#" class="page-link">6</a>
                    <a href="#" class="page-link">7</a>
                    <a href="#" class="page-link">Next</a>
                </div>        
            </div>
        </div>
    </div>
</div>
</div>
@endsection
