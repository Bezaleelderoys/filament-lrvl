@extends('layouts.main')

@section('container')
    <div class="container-xxl pb-5">
        <!-- Check if the post has an image -->
        @if ($post->image)
            <img src="{{ asset('storage/' . $post->image) }}"
                style="border-radius: 10px; width: 100%; height: 320px; object-fit: cover; padding-bottom: 50px;" />
        @else
            <p>No image available</p>
        @endif
        <h5 class="text-white" style="font-weight: 600;">{{ $post->title }}</h5>
        <article class="text-white" style="font-family: 'Montserrat', sans-serif">
            {!! $post->body !!}
        </article>
    </div>
    <div class="container-xxl" style="padding-top: 120px; padding-bottom: 120px" id="blog">
        <h1 class="text-light" style="font-weight: bold">Blog & Resources</h1>
        <p class="text-light" style="font-family: 'Montserrat', sans-serif; width: 460px">
            I love to write whenever I can. Here are some of my blog posts and resources
            for designers and developers.
        </p>
        <div class="row g-3">
            <div class="col-md-4" style="overflow: hidden">
                @if ($post->image)
                    <img src="{{ asset('storage/' . $post->image) }}" class="img-fluid"
                        style="border-radius: 20px; height: 300px; object-fit: cover" />
                @endif
                <div style="display: flex; align-items: center; justify-content: space-between; margin-top: 20px;">
                    <h5 class="text-light">{{ $post->title }}</h5>
                    <a href="/blog/{{ $post->slug }}"> <!-- Assuming you use a slug for the URL -->
                        <button
                            style="width: 45px; height: 45px; border-radius: 50%; border: none; outline: none; background: rgba(255, 255, 255, 0.493);">
                            <i class="text-light bi bi-arrow-up-right" style="font-weight: bold"></i>
                        </button>
                    </a>
                </div>
            </div>
            <!-- Repeat for other blog posts -->
            <div class="col-md-4" style="overflow: hidden">
                <img src="https://images.unsplash.com/photo-1575936123452-b67c3203c357?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aW1hZ2V8ZW58MHx8MHx8fDA%3D"
                    alt="" class="img-fluid" style="border-radius: 20px; height: 300px; object-fit: cover" />
                <div style="display: flex; align-items: center; justify-content: space-between; margin-top: 20px;">
                    <h5 class="text-light">Personal Portfolio Concept</h5>
                    <button
                        style="width: 45px; height: 45px; border-radius: 50%; border: none; outline: none; background: rgba(255, 255, 255, 0.493);">
                        <i class="text-light bi bi-arrow-up-right" style="font-weight: bold"></i>
                    </button>
                </div>
            </div>
            <!-- Repeat similar structure for other columns -->
        </div>
        <div class="d-flex justify-content-center mt-3">
            <button class="btn btn-light py-3"
                style="border: none; outline: none; width: 200px; background-color: #6c4bef; color: white;">
                More This Way <i class="bi bi-arrow-right ms-2"></i>
            </button>
        </div>
    </div>
@endsection
