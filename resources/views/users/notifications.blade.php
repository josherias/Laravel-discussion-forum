@extends('layouts.app')

@section('content')

<div class="card">
    <div class="card-header">Notifications</div>

    <div class="card-body">
        <ul class="list-group">

            @foreach($notifications as $notification)


            @if($notification->type === 'App\Notifications\NewReplyAdded')
            <!-- reply notification -->
            <li class="list-group-item">
                new reply added to your discussion
                <strong>{{ $notification->data['discussion']['title'] }}</strong>
                <a href="{{ route('discussions.show',$notification->data['discussion']['slug'] ) }}" class="btn btn-info btn-sm float-right text-light">
                    View Discussion
                </a>
            </li>
            @endif

            @if($notification->type === 'App\Notifications\NewReplyAdded')
            <!-- best reply notification -->
            <li class="list-group-item">
                Your reply to the discussion <strong>{{ $notification->data['discussion']['title'] }}</strong> was marked as best reply
                <a href="{{ route('discussions.show',$notification->data['discussion']['slug'] ) }}" class="btn btn-info btn-sm float-right text-light">
                    View Discussion
                </a>
            </li>
            @endif

            @endforeach
        </ul>
    </div>
</div>

@endsection