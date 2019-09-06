@extends('landing')
@section('page-content')

@if ($errors->any())
<div class="err">
    <h3>Error : </h3>
    &bull; {{ $errors->first() }}
</div>
@endif

@if (session('responseInfo'))
<div class="status">
    {{ session('responseInfo') }}
</div>
@endif

<div class="title"><b>Master Menu </b></div>
<form action="dashboard/master-menu/update" method="post" class="menu">
    <table class="post">
        <tbody>
            <tr>
                <td style="width:50%">
                    Nama Menu :<br>
                    <input value="{{ $menu_item->name }}" autocomplete="off" type="text" name="name" style="width:90%"
                        required>
                </td>
                <td style=" width:50%">
                    Slug :<br>
                    <input value="{{ $menu_item->url }}" autocomplete="off" type="text" name="url" style="width:90%"
                        required>
                </td>
            </tr>
            <tr>
                <td style="width:50%">
                    Tipe :<br>
                    <select style="width:90%" name="type" required>
                        <option value="">-Choose-</option>
                        <option {{ ($menu_item->type == "link") ? "selected" : "" }} value="link">LINK</option>
                        <option {{ ($menu_item->type == "text") ? "selected" : "" }} value="text">TEXT</option>
                    </select>
                </td>
                <td style=" width:50%">
                    Position :<br>
                    <input value="{{ $menu_item->position }}" autocomplete="off" type="number" name="position"
                        style="width:90%" required>
                </td>
            </tr>
            <tr>
                <td style="text-align: right" class="content" colspan="2">
                    {{ csrf_field() }}
                    <input type="hidden" name="id" value="{{ $menu_item->id }}">
                    <input type="submit" value="Save">
                </td>
            </tr>
        </tbody>
    </table>
</form>
@endsection