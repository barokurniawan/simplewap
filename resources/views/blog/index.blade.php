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
        <a href="{{ sprintf(\App\BlogModel::URI_SINGLE_ARTICLE, $item->slug) }}"
            title="{{ $item->title }}">{{ $item->title }}</a>
    </h1>
</div>

<div class="menu">
    Kategori:

    @if (is_null($item->category))
    <span>{{ \App\CategoryModel::DEFAULT_CATEGORY_NAME }}</span>
    @else
    <a href="{{ sprintf(\App\BlogModel::URI_ARTICLE_BY_CATEGORY, $item->category->category_slug) }}"
        title="{{ $item->category->category_name }}">{{ $item->category->category_name }}</a>
    @endif

    <br />
    <span>{{ date_format(new Datetime($item->created_at), "d/m/Y H:i") }}</span>
    <div class="line"></div>
    {{ substr(strip_tags($item->description), 0, 250) }} ...
    <br />
    <br />
    [Dibaca: <span>{{ $item->read_count }}</span>]
    [Komentar: <a href="{{ sprintf(\App\BlogModel::URI_SINGLE_ARTICLE, $item->slug) }}"
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
</div>

@forelse ($categories as $item)
<div class="menu">
    <img src="images/line.png" alt="&raquo;" />
    <a href="{{ sprintf(\App\BlogModel::URI_ARTICLE_BY_CATEGORY, $item->category_slug) }}"
        title="{{ $item->category_name }}">{{ $item->category_name }}</a>
    ({{ count($item->articles) }})<br />
</div>
@empty
<div class="menu">Tidak ada kategori</div>
@endforelse

@endsection