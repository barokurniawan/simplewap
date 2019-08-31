@extends('landing')
@section('page-content')

@if ($errors->any())
<div class="err">
    <h3>Error : </h3>
    &bull; {{ $errors->first() }}
</div>
@endif

@if ($article == null)
<div class="err">
    <h3>Artikel tidak ditemukan</h3>
</div>

@else

<div class="title">
    <h1>
        <a href="{{ sprintf("blog/read/%s.html", $article->slug) }}" title="Test">{{ $article->title }}</a>
    </h1>
</div>

<div class="menu">
    Kategori: <a href="{{ sprintf("blog/category/%s.html", $article->category->category_slug) }}" title="Umum">{{ $article->category->category_name }}</a>
    <br />
    <span>2012-01-01</span>
    <div class="line"></div>
        {{ $article->description }}
    <br />
    <br />
    [Dibaca: <span>1</span>] [Komentar: 1]<br />
</div>    
@endif

<div class="title"><b>Kategori</b></div>
<div class="menu">
    <img src="images/rss.png" alt="&raquo;"/> <a href="blog/rss.xml">RSS-Feed</a><br />
    @forelse ($categories as $item)
    <img src="images/line.png" alt="&raquo;"/> 
    <a href="{{ sprintf("category/%s.html", $item->category_slug) }}" title="{{ $item->category_name }}">{{ $item->category_name }}</a> 
    ({{ count($item->articles) }})<br />
    @empty  
    @endforelse
</div>

@endsection