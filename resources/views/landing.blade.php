<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="utf-8">
    <base href="{{ url("/") }}">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    @if (Request::segment(1) == "login")
    @php
    $alt_title = "Login"
    @endphp
    @else
    @php
    $alt_title = "Undefined"
    @endphp
    @endif

    <title>{{ sprintf("%s - %s", (isset($page_title) ? $page_title : $alt_title), env("APP_NAME")) }}</title>
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,600" rel="stylesheet">
    <meta name="keywords" content="{{ (isset($page_keyword) ? $page_keyword : "") }}" />
    <meta name="description" content="{{ (isset($page_description) ? $page_description : "") }}" />
    <meta name="copyright" content="(c) simplewap.net 2012" />
    <meta name="author" content="{{ env('APP_AUTHOR') }}" />
    <meta name="email" content="{{ env('APP_AUTHOR') }}" />
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <meta name="Charset" content="UTF-8" />
    <meta name="Distribution" content="Global" />
    <meta name="Robots" content="INDEX,FOLLOW" />
    <meta name="Revisit-after" content="1 Day" />
    <link rel="icon" type="image/x-icon" href="favicon.ico" />
    <link rel="stylesheet" type="text/css" href="data/themes/default/style.css" />
    <link rel="alternate" type="application/rss+xml" title="RSS-News" href="news/rss.xml" />
    <link rel="alternate" type="application/rss+xml" title="RSS-News" href="blog/rss.xml" />
    <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/jodit/3.2.46/jodit.min.css">
    <script src="//code.jquery.com/jquery-1.12.4.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jodit/3.2.46/jodit.min.js"></script>
</head>

<body>
    @component('component.header')
    @endcomponent

    @component('component.navigation')
    @endcomponent

    @yield('page-content')

    @if (isset($bottom_list))
    @component('component.bottom-section', ["bottom_list" => $bottom_list])
    @endcomponent
    @endif

    @component('component.footer')
    @endcomponent
</body>

</html>