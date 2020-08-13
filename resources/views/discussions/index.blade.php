@extends('layouts.app')

@section('content')


@foreach($discussions as $discussion)
<div class="card mb-3">
    @include('partials.discussion-header')

    <div class="card-body">
        <h5> <span class="text-danger">Title</span> : {{ $discussion->title }}</h5>
    </div>
</div>
@endforeach

<!-- append lets chaanel remain there even if pagination is active -->
{{ $discussions->appends(['channel' => request()->query('channel') ])->links() }}
@endsection