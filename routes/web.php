<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
	$shopname = "梦圆博客";


    return view('welcome',['shopname'=>$shopname]);
});



Route::get('/login', function (){
    $shopname = "多谢来到我的博客";

    return view('welcome',['shopname'=>$shopname]);
})->name('login');



Route::get('/register', function (){
    $shopname = "但是我的博客不欢迎你,滚！";

    return view('welcome',['shopname'=>$shopname]);
})->name('register');
