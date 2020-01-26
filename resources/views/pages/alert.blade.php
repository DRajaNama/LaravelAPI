@if(Session::has('message'))
<div class="alert {{ Session::get('alert-class') }} alert-dismissible">
    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
  <strong>{{ Session::get('sub-text') }}!</strong> {{ Session::get('message') }}
</div>
@endif

