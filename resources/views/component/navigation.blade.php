<div class="header" style="padding: 4px 2px 4px 2px">
    <span>
        <a href="./">Home</a>
    </span>
    <span>
        <a href="shoutbox/">Shout</a>
    </span>
    <span>
        <a href="blog/">Blog</a>
    </span>

    @guest
    <div style="float: right">

        @if (\App\SimplewapSetting::getConfig("SITE_REGISTRATION") == "open")
        <span>
            <a href="register/">Daftar</a>
        </span>
        @endif

        <span>
            <a href="login/">Masuk</a>
        </span>
    </div>
    @else
    <div style="float: right">
        <span>
            <a href="{{ route('dashboard') }}">Dashboard</a>
        </span>
        <span>
            <a href="{{ route('logout') }}">Keluar</a>
        </span>
    </div>
    @endguest
</div>