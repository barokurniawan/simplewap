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
    <a href="article/composer">Tulias artikel</a>
</div>
<div class="menu">
    <a href="dashboard/master-menu">Data Menu</a>
</div>
<div class="menu">
    <a href="dashboard/master-category">Data Kategori</a>
</div>
<div class="menu">
    <a href="dashboard/article/">Data Artikel</a>
</div>
<div class="menu">
    <a href="dashboard/setting">Pengaturan</a>
</div>

@endsection