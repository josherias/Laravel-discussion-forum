<div class="card-header ">
    <div class="d-flex justify-content-between" style="align-items: center;">
        <div>
            <!-- refernce relationship and obtain user email -->
            <img width="40px" height="40px" style="border-radius:50%;" src="{{ Gravatar::src($discussion->author->email) }}" alt="">
            <strong class="ml-3">{{ $discussion->author->name }}</strong>
        </div>

        <div>
            <a href="{{ route('discussions.show', $discussion->slug) }}" class="btn btn-success btn-sm">View</a>
        </div>
    </div>

</div>