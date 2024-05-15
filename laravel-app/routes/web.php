<?php

use App\Models\Blog;
use App\Models\setting;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('home', [
        'settings' => setting::get(),
        'blog' => Blog::get(),
    ]);
});

Route::get('/blog/{blog:title}', function (Blog $blog) {
    return view('blog', [
        "post" => $blog
    ]);
});
