@extends('landing')
@section('page-content')

@if ($errors->any())
<div class="err">
    <h3>Error : </h3>
    &bull; {{ $errors->first() }}
</div>
@endif

@forelse ($articles as $item)
<div class="title">
    <h1>
        <a href="{{ sprintf("blog/read/%s.html", $item->slug) }}" title="{{ $item->title }}">{{ $item->title }}</a>
    </h1>
</div>

<div class="menu">
    Kategori: <a href="{{ sprintf("blog/category/%s.html", $item->category->category_slug) }}"
        title="{{ $item->category->category_name }}">{{ $item->category->category_name }}</a>
    <br />
    <span>{{ date_format(new Datetime($item->created_at), "d/m/Y H:i") }}</span>
    <div class="line"></div>
    {{ strip_tags(substr($item->description, 250)) }} ...
    <br />
    <br />
    [Dibaca: <span>{{ $item->read_count }}</span>]
    [Komentar: <a href="{{ sprintf("blog/read/%s.html", $item->slug) }}"
        title="Comments: {{ $item->title }}">{{ count($item->comments) }}</a>]<br />
</div>
@empty
<div class="status">
    Tidak ada article
</div>
@endforelse

@if ($articles->links() != "")
<div class="menu" style="text-align: center;">
    {{ $articles->links() }}
</div>
@endif

<div class="title"><b>Kategori</b></div>
<div class="menu">
    <img src="images/rss.png" alt="&raquo;" /> <a href="blog/rss.xml">RSS-Feed</a><br />
    @forelse ($categories as $item)
    <img src="images/line.png" alt="&raquo;" />
    <a href="{{ $item->category_slug }}" title="Programming">{{ $item->category_name }}</a>
    ({{ count($item->articles) }})<br />
    @empty
    @endforelse
</div>

@endsection