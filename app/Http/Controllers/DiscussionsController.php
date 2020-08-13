<?php

namespace App\Http\Controllers;

use App\Discussion;
use App\Http\Requests\CreateDiscussionRequest;
use App\Reply;
use Illuminate\Http\Request;

use Illuminate\Support\Str;

class DiscussionsController extends Controller
{



    public function __construct()
    {
        // before----- $this->middleware('auth')->only(['create', 'store']);

        //after adding verification  ----end points only accessible by verified users
        $this->middleware(['auth', 'verified'])->only(['create', 'store']);
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {

        //return view with data from discussions
        return view('discussions.index', [
            'discussions' => Discussion::filterByChannels()->paginate(5)
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('discussions.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(CreateDiscussionRequest $request)
    {
        // authenticated users id stored in table due to the relationship with discussuions        
        auth()->user()->discussions()->create([
            'title' => $request->title,
            'content' => $request->content,
            'channel_id' => $request->channel,
            'slug' => Str::slug($request->title, '-') //generate a url friendly slug
        ]);


        session()->flash('success', 'Discussion Posted successfully');

        return redirect()->route('discussions.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show(Discussion $discussion)
    {
        return view('discussions.show', [
            'discussion' => $discussion
        ]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }

    //marks reply as best reply
    public function reply(Discussion $discussion, Reply $reply)
    {

        $discussion->markAsBestReply($reply);

        session()->flash('success', 'Marked as best reply');


        return redirect()->back();
    }
}
