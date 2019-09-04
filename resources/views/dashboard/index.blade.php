@extends('landing')
@section('page-content')

@if ($errors->any())
<div class="err">
    <h3>Error : </h3>
    &bull; {{ $errors->first() }}
</div>
@endif

<div class="title"><b>Admin Panel</b></div>
<div class="menu">
    <a href="dashboard/master-menu">Data Menu</a>
</div>
<div class="menu">
    <a href="dashboard/master-category">Data Kategori</a>
</div>
<div class="menu">
    <a href="article/">Data Artikel</a>
</div>
<div class="menu">
    <a href="article/create">Artikel</a>
</div>
<div class="menu">
    <a href="dashboard/setting">Pengaturan</a>
</div>

@endsection