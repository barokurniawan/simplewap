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
    Kategori: <a href="{{ sprintf("blog/category/%s.html", $article->category->category_slug) }}"
        title="Umum">{{ $article->category->category_name }}</a>
    <br />
    <span>2012-01-01</span>
    <div class="line"></div>
    {{ $article->description }}
    <br />
    <br />
    [Dibaca: <span>1</span>]
</div>
@endif

<div class="title"><b>Komentar ({{ count($article->comments) }})</b></div>
<table class="post">
    <tbody>
        @forelse ($article->comments as $comment)
        <tr>
            <td class="icon"><img src="assets/icons/male.png" alt="*"></td>
            <td class="title">
                @if ($comment->url != "")
                <a href="{{ $comment->url }}"><b>{{ $comment->name }}</b></a>
                @else
                <b>{{ $comment->name }}</b>
                @endif
            </td>
        </tr>
        <tr>
            <td class="menu" colspan="2">
                <div style="text-align:right">{{ date_format(new Datetime($comment->created_at), "d/m/Y") }}</div>
                {{ $comment->comment }}
            </td>
        </tr>
        @empty

        @endforelse
    </tbody>
</table>

<div class="title"><b>Form Komentar</b></div>
@if (session('responseInfo'))
<div class="status">
    {{ session('responseInfo') }}
</div>
@endif
<div class="menu">
    <form action="action/new-comment?redirect=back" method="post">
        <table class="post">
            <tbody>
                <tr>
                    <td style="width:50%">
                        Nama :<br><input required autocomplete="off" type="text" name="name" style="width:90%"
                            placeholder="nama">
                    </td>
                    <td style=" width:50%">
                        Situs :<br><input autocomplete="off" type="text" name="url" style="width:90%"
                            placeholder="http://">
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="width:100%">
                        Pesan :<br>
                        <textarea required autocomplete="off" type="text" name="comment" style="width:95%"
                            rows="3"></textarea>
                    </td>
                </tr>
                <tr>
                    <td class="content" colspan="2">
                        {{ csrf_field() }}
                        <input type="hidden" name="article_id" value="{{ $article->id }}">
                        <input type="submit" value="Post">
                    </td>
                </tr>
            </tbody>
        </table>
    </form>
</div>

<div class="title"><b>Kategori</b></div>
<div class="menu">
    <img src="images/rss.png" alt="&raquo;" /> <a href="blog/rss.xml">RSS-Feed</a><br />
    @forelse ($categories as $item)
    <img src="images/line.png" alt="&raquo;" />
    <a href="{{ sprintf("category/%s.html", $item->category_slug) }}"
        title="{{ $item->category_name }}">{{ $item->category_name }}</a>
    ({{ count($item->articles) }})<br />
    @empty
    @endforelse
</div>

@endsection