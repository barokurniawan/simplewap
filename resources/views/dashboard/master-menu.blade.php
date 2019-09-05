@extends('landing')
@section('page-content')

@if ($errors->any())
<div class="err">
    <h3>Error : </h3>
    &bull; {{ $errors->first() }}
</div>
@endif
<div class="title"><b>Master Menu </b></div>
<form action="dashboard/master-menu/create" method="post" class="menu">
    <table class="post">
        <tbody>
            <tr>
                <td style="width:50%">
                    Nama Menu :<br>
                    <input autocomplete="off" type="text" name="name" style="width:90%" required>
                </td>
                <td style=" width:50%">
                    Slug :<br>
                    <input autocomplete="off" type="text" name="url" style="width:90%" required>
                </td>
            </tr>
            <tr>
                <td style="width:50%">
                    Tipe :<br>
                    <select style="width:90%" name="type" required>
                        <option value="">-Choose-</option>
                        <option value="link">LINK</option>
                        <option value="text">TEXT</option>
                    </select>
                </td>
                <td style=" width:50%">
                    Position :<br>
                    <input autocomplete="off" type="number" name="position" style="width:90%" required>
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

<div class="title"><b>List Menu </b></div>
<div class="menu">
    <div class="table-responsive">
        <table class="table">
            <thead>
                <tr>
                    <th>No</th>
                    <th>Nama Menu</th>
                    <th>Tipe</th>
                    <th>Pos</th>
                    <th>Create</th>
                    <th>Slug</th>
                    <th>#</th>
                </tr>
            </thead>
            <tbody>
                @forelse ($list_menu as $i => $item)
                <tr>
                    <td>{{ $i+1 }}</td>
                    <td>{{ $item->name }}</td>
                    <td>{{ $item->type }}</td>
                    <td>{{ $item->position }}</td>
                    <td>{{ date_format(new Datetime($item->created_at), "d/m/Y") }}</td>
                    <td>{{ $item->url }}</td>
                    <td>
                        <a href="{{ sprintf(App\MenuModel::LINK_UPDATE, $item->id) }}">[E]</a> |
                        <a onclick="javascript: return confirm('Hapus kategori {{ $item->id }}?');"
                            href="{{ sprintf(App\MenuModel::LINK_DELETE, $item->id) }}">[D]</a>
                    </td>
                </tr>
                @empty

                @endforelse
            </tbody>
            <tfoot>
                <tr>
                    <th colspan="4" style="text-align: center;">
                        {{ $list_menu->links() }}
                    </th>
                </tr>
            </tfoot>
        </table>
    </div>
</div>
@endsection