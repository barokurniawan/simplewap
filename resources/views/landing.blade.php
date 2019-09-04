<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="utf-8">
    <base href="{{ url("/") }}">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>{{ sprintf("%s - %s", (isset($page_title) ? $page_title : "Undefined"), env("APP_NAME")) }}</title>
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,600" rel="stylesheet">
    <meta name="keywords" content="" />
    <meta name="description" content="" />
    <meta name="copyright" content="(c) simplewap.net 2012" />
    <meta name="author" content="{{ env('APP_AUTHOR') }}" />
    <meta name="email" content="{{ env('APP_AUTHOR') }}" />
    <meta name="Charset" content="UTF-8" />
    <meta name="Distribution" content="Global" />
    <meta name="Robots" content="INDEX,FOLLOW" />
    <meta name="Revisit-after" content="1 Day" />
    <link rel="icon" type="image/x-icon" href="favicon.ico" />
    <link rel="stylesheet" type="text/css" href="data/themes/default/style.css" />
    <link rel="alternate" type="application/rss+xml" title="RSS-News" href="news/rss.xml" />
    <link rel="alternate" type="application/rss+xml" title="RSS-News" href="blog/rss.xml" />
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