<!doctype html>
<html lang="{{ app()->getLocale() }}">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Laravel</title>

        <!-- Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Raleway:100,600" rel="stylesheet" type="text/css">

        <!-- Styles -->
        <style>
            html, body {
                background-color: #fff;
                color: #636b6f;
                font-family: 'Raleway', sans-serif;
                font-weight: 100;
                height: 100vh;
                margin: 0;
            }

            .full-height {
                height: 100vh;
            }

            .flex-center {
                padding-top: 13rem;
                box-sizing: content-box;
                align-items: top;
                display: flex;
                justify-content: center;
            }

            .position-ref {
                position: relative;
            }

            .top-right {
                position: absolute;
                right: 10px;
                top: 18px;
            }

            .content {
                text-align: center;
            }

            .title {
                font-size: 84px;
            }

            .links > a {
                color: #636b6f;
                padding: 0 30px;
                font-size: 20px;
                font-weight: 600;
                letter-spacing: .1rem;
                text-decoration: none;
                text-transform: uppercase;
            }

            .m-b-md {
                margin-bottom: 50px;
            }
        </style>
    </head>
    <body>
        <div class="flex-center position-ref full-height">
            @if (Route::has('login'))
                <div class="top-right links">
                    @auth
                        <a href="{{ url('/home') }}">首页</a>
                    @else
                        <a href="{{ route('login') }}">登录</a>
                        <a href="{{ route('register') }}">注册</a>
                    @endauth
                </div>
            @endif

            <div class="content">
                <div class="title m-b-md">
                    {{$shopname or '欢迎来到我的博客'}}
                </div>

                <div class="links">
                    <a href="https://laravel.com/docs">逛一逛</a>
                    <a href="https://laracasts.com">去发帖</a>
                    <a href="https://laravel-news.com">个人中心</a>
                    <a href="https://forge.laravel.com">上传资源</a>
                    <a href="https://github.com/laravel/laravel">去下载</a>
                </div>
            </div>
        </div>
    </body>
    <script type="text/javascript" src="/js/app.js"></script>
    <script type="text/javascript">

        //关闭当前窗口
        function closeWindow(time=2000)
        {
            setTimeout(function(){
                if(navigator.userAgent.indexOf("Firefox") != -1 || navigator.userAgent.indexOf("Chrome") != -1){
                    window.location.href = "about:blank";
                    window.close();
                }else{
                    window.opener = null;
                    window.open("", "_self");
                    window.close();
                }
            },time)
        }

        @if (\Request::is('register'))  
          $(function(){
                closeWindow();
            })
        @else
            var i = 0;
            var settime = 1500;
            var dd = setInterval(function(){
                i++;
                settime *= parseInt(i);
                console.log(i,settime,dd)
                if(i==1){
                    $('.title').text('这里是梦圆博客');
                }else if(i==2){
                    $('.title').text('多谢来到我的博客');
                }else if(i==3){
                    $('.title').text('但是我的博客不欢迎你');
                    // closeWindow(1000);
                }else if(i==4){
                    $('.content').toggle();
                    $('.title').css({'font-size':'100px'}).text('滚！');
                }else{
                    $('.content').toggle();
                    clearInterval(dd)
                }
             }, settime);
        @endif
    </script>
</html>
