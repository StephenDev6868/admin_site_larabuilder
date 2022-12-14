<?php

namespace App\Notifications;

use Illuminate\Notifications\Notification;

class DBChannel 
{

  public function send($notifiable, Notification $notification)
  {
    $data = $notification->toArray($notifiable);

    return $notifiable->routeNotificationFor('database')->create([
        'id'      => $notification->id,
        'user_id' => \Auth::user()->id,
        'type'    => get_class($notification),
        'data'    => $data,
        'read_at' => null,
    ]);
  }

}