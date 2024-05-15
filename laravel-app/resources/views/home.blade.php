@extends('layouts.main')


@section('container')
    @include('partials.header')
    <!-- bagian my work -->
    <div class="container-xxl" style="padding-top: 120px; padding-bottom: 120px" id="work">
        <h1 class="text-light" style="font-weight: bold">My Work</h1>
        <div style="
         display: flex;
         justify-content: space-between;
         align-items: center;
       ">
            <p class="text-light" style="font-family: 'Montserrat', sans-serif; width: 460px">
                Here are some of my design works that showcase my skills and
                expertise. Click on each project to see
            </p>
            <div style="display: flex; justify-content: center; align-items: center">
                <p class="text-light me-5">Visual Design</p>
                <p class="text-light">Case Study</p>
            </div>
        </div>
        <div class="row g-3">
            @foreach ($settings as $work)
                <div class="col-md-4" style="overflow: hidden">
                    <img src="storage/{{ $work->image }}" class="img-fluid"
                        style="border-radius: 20px; height: 500px; object-fit: cover" />
                    <div
                        style="
             display: flex;
             align-items: center;
             justify-content: space-between;
             margin-top: 20px;
           ">
                        <h5 class="text-light">{{ $work->title }}</h5>
                        <a href="{{ $work->web_link }}"><button
                                style="
               width: 45px;
               height: 45px;
               border-radius: 50%;
               border: none;
               outline: none;
               background: rgba(255, 255, 255, 0.493);
             ">
                                <i class="text-light bi bi-arrow-up-right" style="font-weight: bold"></i>
                            </button></a>
                    </div>
                </div>
            @endforeach
        </div>
        <div class="d-flex justify-content-center mt-3">
            <button class="btn btn-light py-3"
                style="
           border: none;
           outline: none;
           width: 200px;
           background-color: #6c4bef;
           color: white;
         ">
                More This Way <i class="bi bi-arrow-right ms-2"></i>
            </button>
        </div>
    </div>
    <div class="container-xxl">
        <div class="d-flex flex-column align-items-center justify-content-between">
            <h1 class="text-light" style="font-weight: bold">Technologies Used</h1>
            <p class="text-light" style="font-family: 'Montserrat', sans-serif">
                Technologies i have used over the course of making my projects.
            </p>
        </div>
        <div class="row g-1 py-5 mt-3"
            style="
         background-color: rgba(95, 95, 95, 0.103);
         border-radius: 10px;
         font-family: 'Montserrat', sans-serif;
         color: white;
       ">
            <div class="col-md-4 d-flex justify-content-center align-items-center">
                <div style="width: 50px; height: 50px; margin-right: 10px">
                    <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/d/d5/Tailwind_CSS_Logo.svg/1024px-Tailwind_CSS_Logo.svg.png"
                        alt="" style="width: 100%" />
                </div>
                <div>
                    <h1>Tailwind</h1>
                </div>
            </div>
            <div class="col-md-4 d-flex justify-content-center align-items-center">
                <div style="width: 50px; height: 50px; margin-right: 10px">
                    <img src="https://upload.wikimedia.org/wikipedia/commons/b/b2/Bootstrap_logo.svg" alt=""
                        style="width: 100%" />
                </div>
                <div>
                    <h1>Bootstrap</h1>
                </div>
            </div>
            <div class="col-md-4 d-flex justify-content-center align-items-center">
                <div style="width: 50px; height: 50px; margin-right: 10px">
                    <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/9/9a/Laravel.svg/985px-Laravel.svg.png"
                        alt="" style="width: 100%" />
                </div>
                <div>
                    <h1>Laravel</h1>
                </div>
            </div>
        </div>
        <div class="row g-1 py-5 mt-3"
            style="
         background-color: #6c4bef;
         border-radius: 10px;
         font-family: 'Montserrat', sans-serif;
         color: white;
       ">
            <div class="col-md-4 d-flex flex-column justify-content-center align-items-center"
                style="border-right: 1px solid white">
                <h1>2</h1>
                <p>Years of experience</p>
            </div>
            <div class="col-md-4 d-flex flex-column justify-content-center align-items-center">
                <h1>1+</h1>
                <p>Freelance Project</p>
            </div>
            <div class="col-md-4 d-flex flex-column justify-content-center align-items-center"
                style="border-left: 1px solid white">
                <h1>100%</h1>
                <p>Customer Satisfaction</p>
            </div>
        </div>
    </div>
    <div class="container-xxl" style="padding-top: 120px; padding-bottom: 120px" id="blog">
        <h1 class="text-light" style="font-weight: bold">Blog & Resources</h1>
        <p class="text-light" style="font-family: 'Montserrat', sans-serif; width: 460px">
            I love to write whenever i can. Here is some of my blog and resources
            for the designers and developers.
        </p>
        <div class="row g-3" style="padding-bottom: 120px">
            @foreach ($blog as $post)
                <div class="col-md-4" style="overflow: hidden">
                    <img src="storage/{{ $post->image }}" class="img-fluid"
                        style="border-radius: 20px; height: 300px; object-fit: cover" />
                    <div
                        style="
              display: flex;
              align-items: center;
              justify-content: space-between;
              margin-top: 20px;
            ">
                        <h5 class="text-light">{{ $post->title }}</h5>
                        <a href="/blog/{{ $post->title }}"> <button
                                style="
                width: 45px;
                height: 45px;
                border-radius: 50%;
                border: none;
                outline: none;
                background: rgba(255, 255, 255, 0.493);
              ">
                                <i class="text-light bi bi-arrow-up-right" style="font-weight: bold"></i>
                            </button></a>
                    </div>
                </div>
            @endforeach
        </div>

        @include('partials.footer')
    @endsection
