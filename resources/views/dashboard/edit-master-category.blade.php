@extends('landing')
@section('page-content')

@if ($errors->any())
<div class="err">
    <h3>Error : </h3>
    &bull; {{ $errors->first() }}
</div>
@endif
<div class="title"><b>Master Kategori </b></div>
<form action="dashboard/master-category/update" method="post" class="menu">
    <table class="post">
        <tbody>
            <tr>
                <td style="width:50%">
                    Nama Kategori :<br>
                    <input autocomplete="off" type="text" name="category_name" style="width:90%"
                        value="{{ $category->category_name }}" required>
                </td>
                <td style=" width:50%">
                    Slug :<br><input autocomplete="off" type="text" name="category_slug" style="width:90%"
                        value="{{ $category->category_slug }}" required>
                </td>
            </tr>
            <tr>
                <td style="text-align: right" class="content" colspan="2">
                    {{ csrf_field() }}
                    <input name="category_id" type="hidden" value="{{ $category->category_id }}">
                    <input type="submit" value="Save">
                </td>
            </tr>
        </tbody>
    </table>
</form>
@endsection