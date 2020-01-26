
<!-- Modal -->
<!-- Project add Modal -->
<div class="modal fade" id="addProject" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" style="display: none;" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
            <h5 class="modal-title">Project Add</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">×</span>
            </button>
            </div>
            <form method="POST" action="{{ route('project-add') }}" aria-label="{{ __('Project') }}">
                @csrf
                <div class="modal-body">
                    <br>
                    <center><h1 class="text-center rounded-circle-border "><i class="fa fa-folder"></i></h1></center>
                    <br>
                    <div class="form-group">
                        <label class="form-control-placeholder" for="project_title">Project Title</label>
                        <input type="text" id="project_title" name="title"  class="form-control"  placeholder="Enter Project Title">
                        @if ($errors->has('title'))
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $errors->first('title') }}</strong>
                            </span>
                        @endif
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary">Save changes</button>
                </div>
            </form>
        </div>
    </div>
</div>


<!-- Modal -->
<!-- Project Edit Modal -->
<div class="modal fade" id="editProject" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" style="display: none;" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
            <h5 class="modal-title">Project Edit</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">×</span>
            </button>
            </div>
            <div class="modal-body">
                <br>
                <center><h1 class="text-center rounded-circle-border "><i class="fa fa-folder"></i></h1></center>
                <br>
                <div class="form-group">
                    <label class="form-control-placeholder" for="project_title_edit">Project Title</label>
                    <input type="text" id="project_title_edit" name="title" class="form-control" required="" placeholder="Enter Project Title">
                </div>
            </div>
            <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
            <button type="button" class="btn btn-primary">Save changes</button>
            </div>
        </div>
    </div>
</div>

<!-- Project add Modal -->
<div class="modal fade" id="addList" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" style="display: none;" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
            <h5 class="modal-title">List Add</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">×</span>
            </button>
            </div>
            <div class="modal-body">
                <br>
                <center><h1 class="text-center rounded-circle-border "><i class="fa fa-list"></i></h1></center>
                <br>
                <div class="form-group form-group-2 has-default">
                    <select class="form-control form-control-shadow" placeholder="Default">
                        <option value="">Project 1</option>
                        <option value="">Project 1</option>
                        <option value="">Project 1</option>
                        <option value="">Project 1</option>
                    </select>
                </div>
                <br>
                <div class="form-group">
                    <input type="email" id="email" class="form-control" required="">
                    <label class="form-control-placeholder" for="email">List Title</label>
                </div>
            </div>
            <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
            <button type="button" class="btn btn-primary">Save changes</button>
            </div>
        </div>
    </div>
</div>

<!-- Project add Modal -->
<div class="modal fade" id="editList" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" style="display: none;" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
            <h5 class="modal-title">List Edit</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">×</span>
            </button>
            </div>
            <div class="modal-body">
                <br>
                <center><h1 class="text-center rounded-circle-border "><i class="fa fa-list"></i></h1></center>
                <br>
                <div class="form-group form-group-2 has-default">
                    <select class="form-control form-control-shadow" placeholder="Default">
                        <option value="">Project 1</option>
                        <option value="">Project 1</option>
                        <option value="">Project 1</option>
                        <option value="">Project 1</option>
                    </select>
                </div>
                <br>
                <div class="form-group">
                    <input type="email" id="email" class="form-control" required="">
                    <label class="form-control-placeholder" for="email">List Title</label>
                </div>
            </div>
            <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
            <button type="button" class="btn btn-primary">Save changes</button>
            </div>
        </div>
    </div>
</div>

<!-- Project add Modal -->
<div class="modal fade" id="addContacts" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" style="display: none;" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
            <h5 class="modal-title">Contact Add</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">×</span>
            </button>
            </div>
            <div class="modal-body">
                <br>
                <center><h1 class="text-center rounded-circle-border "><i class="fa fa-address-book"></i></h1></center>
                <br>
                <div class="form-group form-group-2 has-default">
                    <select class="form-control form-control-shadow" placeholder="Default">
                        <option value="">List 1</option>
                        <option value="">List 1</option>
                        <option value="">List 1</option>
                        <option value="">List 1</option>
                    </select>
                </div>
                <div class="form-group">
                    <input type="email" id="email" class="form-control" required="">
                    <label class="form-control-placeholder" for="email">Email</label>
                </div>
                <div class="form-group">
                    <input type="text" id="name" class="form-control" required="">
                    <label class="form-control-placeholder" for="name">Name</label>
                </div>
                <div class="form-group">
                    <textarea id="address" class="form-control" required=""></textarea>
                    <label class="form-control-placeholder" for="address">Address</label>
                </div>
            </div>
            <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
            <button type="button" class="btn btn-primary">Save changes</button>
            </div>
        </div>
    </div>
</div>

<!-- Project add Modal -->
<div class="modal fade" id="editContacts" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" style="display: none;" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
            <h5 class="modal-title">Contact Edit</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">×</span>
            </button>
            </div>
            <div class="modal-body">
                <br>
                <center><h1 class="text-center rounded-circle-border "><i class="fa fa-address-book"></i></h1></center>
                <br>
                <div class="form-group form-group-2 has-default">
                    <select class="form-control form-control-shadow" placeholder="Default">
                        <option value="">List 1</option>
                        <option value="">List 1</option>
                        <option value="">List 1</option>
                        <option value="">List 1</option>
                    </select>
                </div>
                <div class="form-group">
                    <input type="email" id="email" class="form-control" required="">
                    <label class="form-control-placeholder" for="email">Email</label>
                </div>
                <div class="form-group">
                    <input type="text" id="name" class="form-control" required="">
                    <label class="form-control-placeholder" for="name">Name</label>
                </div>
                <div class="form-group">
                    <textarea id="address" class="form-control" required=""></textarea>
                    <label class="form-control-placeholder" for="address">Address</label>
                </div>
            </div>
            <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
            <button type="button" class="btn btn-primary">Save changes</button>
            </div>
        </div>
    </div>
</div>