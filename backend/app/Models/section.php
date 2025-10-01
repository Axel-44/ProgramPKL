<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Spatie\Activitylog\Traits\LogsActivity;
use Spatie\Activitylog\LogOptions;

class Section extends Model
{
    use HasFactory, LogsActivity;

    // ... isi model Anda yang lain (fillable, etc)

    public function getActivitylogOptions(): LogOptions
    {
        return LogOptions::defaults()
        ->logOnly(['nama_field_1', 'nama_field_2']) 
        ->setDescriptionForEvent(fn(string $eventName) => "Data Section telah di-{$eventName}")
        ->logOnlyDirty() 
        ->dontSubmitEmptyLogs();
    }
}