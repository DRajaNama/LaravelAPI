<?php

namespace App;

use Illuminate\Notifications\Notifiable;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Carbon\Carbon;

class Project extends Model
{
    use SoftDeletes, Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'title', 'status',
    ];

    //protected $appends = ['created_at'];

    protected $date = [
        'deleted_at'
    ];

    // public function getCreatedAtAttribute()
    // {
    //     return $this->created_at->format('Y-m-d');
    // }
}
