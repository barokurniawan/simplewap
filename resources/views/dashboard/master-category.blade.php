@extends('landing')
@section('page-content')

@if ($errors->any())
<div class="err">
    <h3>Error : </h3>
    &bull; {{ $errors->first() }}
</div>
@endif
<div class="title"><b>Master Kategori </b></div>
<form action="dashboard/master-category/create" method="post" class="menu">
    <table class="post">
        <tbody>
            <tr>
                <td style="width:50%">
                    Nama Kategori :<br>
                    <input autocomplete="off" type="text" name="category_name" style="width:90%" required>
                </td>
                <td style=" width:50%">
                    Slug :<br><input autocomplete="off" autocomplete="off" type="text" name="category_slug"
                        style="width:90%" required>
                </td>
            </tr>
            <tr>
                <td style="text-align: right" class="content" colspan="2">
                    {{ csrf_field() }}
                    <input type="submit" value="Save">
                </td>
            </tr>
        </tbody>
    </table>
</form>

<div class="title"><b>List Kategori </b></div>
<div class="menu">
    <div class="table-responsive">
        <table class="table">
            <thead>
                <tr>
                    <th>No</th>
                    <th>Nama Kategori</th>
                    <th>Create</th>
                    <th>Slug</th>
                    <th>#</th>
                </tr>
            </thead>
            <tbody>
                @forelse ($list_category as $i => $item)
                <tr>
                    <td>{{ $i+1 }}</td>
                    <td>{{ $item->category_name }}</td>
                    <td>{{ date_format(new Datetime($item->created_at), "d/m/Y") }}</td>
                    <td>{{ $item->category_slug }}</td>
                    <td>
                        <a href="">[E]</a> |
                        <a href="">[D]</a>
                    </td>
                </tr>
                @empty

                @endforelse
            </tbody>
            <tfoot>
                <tr>
                    <th colspan="4" style="text-align: center;">
                        {{ $list_category->links() }}
                    </th>
                </tr>
            </tfoot>
        </table>
    </div>
</div>
@endsection