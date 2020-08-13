@extends('layouts.app')

@section('content')

<div class="card mb-5">

    @include('partials.discussion-header')

    <div class="card-body">
        <h5>{{ $discussion->title }}</h5>

        <hr>

        {!! $discussion->content !!}

        <!-- best reply -->
        @if($discussion->bestReply)
        <div class="card bg-success my-5 text-light">
            <div class="card-header">
                <div class="d-flex justify-content-between" style="align-items: center;">
                    <div>
                        <img src="{{ Gravatar::src($discussion->bestReply->owner->email) }}" width="50px" height="50px" style="border-radius: 50%;" alt="">
                        <span class="ml-3"><strong>{{ $discussion->bestReply->owner->name }}</strong></span>
                    </div>
                    <div>
                        Best Reply
                    </div>
                </div>
            </div>
            <div class="card-body">
                {!! $discussion->bestReply->content !!}
            </div>
        </div>
        @endif
    </div>
</div>





@foreach($discussion->replies()->paginate(3) as $reply)


<div class="card my-5">
    <div class="card-header">
        <div class="d-flex justify-content-between">
            <div>
                <img src="{{ Gravatar::src($reply->owner->email) }}" width="50px" height="50px" style="border-radius: 50%;" alt="">
                <span>{{ $reply->owner->name }}</span>
            </div>
            <div>
                @auth
                <!-- only shw btn wen its user who created the discssion -->
                @if(auth()->user()->id === $discussion->user_id)
                <form action="{{ route('discussions.best-reply',['discussion'=>$discussion->slug, 'reply' => $reply->id]) }}" method="POST">
                    @csrf

                    <button type="submit" class="btn btn-info text-light btn-sm">Mark as Best Reply</button>
                </form>
                @endif
                @endauth
            </div>
        </div>
    </div>
    <div class="card-body">
        {!! $reply->content !!}

    </div>

</div>


@endforeach

<!-- paginate peplies -->
{{ $discussion->replies()->paginate(3)->links() }}


<div class="card">
    <div class="card-header">
        <h5> Add a reply</h5>
    </div>

    <div class="card-body">
        @auth
        <form action="{{ route('replies.store', $discussion->slug) }}" method="POST">
            @csrf
            <div class="form-group">
                <input type="hidden" name="content" id="content">
                <trix-editor input="content"></trix-editor>
            </div>

            <div class="form-group">
                <button type="submit" class="btn btn-success btn-sm">Submit</button>
            </div>
        </form>
        @else
        <a href="{{ route('login') }}" class="btn btn-info text-light">Sign in to Reply <i class="fa fa-reply" aria-hidden="true"></i></a>
        @endauth
    </div>
</div>

@endsection

@section('css')
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/trix/1.2.3/trix.min.css" crossorigin="anonymous" />
@endsection


@section('js')
<script src="https://cdnjs.cloudflare.com/ajax/libs/trix/1.2.3/trix.min.js"></script>
@endsection