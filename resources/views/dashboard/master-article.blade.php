@extends('landing')
@section('page-content')

@if ($errors->any())
<div class="err">
    <h3>Error : </h3>
    &bull; {{ $errors->first() }}
</div>
@endif
<div class="title">
    <b>Master Artikel</b>
    <a style="float: right;" href="article/composer">Tulis Artikel</a>
</div>
<div class="menu">
    <div class="table-responsive">
        <table class="table">
            <thead>
                <tr>
                    <th>No</th>
                    <th>Title</th>
                    <th>Category</th>
                    <th>Create Date</th>
                    <th>#</th>
                </tr>
            </thead>
            <tbody>
                @forelse ($list_article as $i => $item)
                <tr>
                    <td>{{ $i+1 }}</td>
                    <td style="white-space: normal;">{{ $item->title }}</td>
                    <td>{{ $item->category->category_name }}</td>
                    <td>{{ date_format(new Datetime($item->created_at), "d/m/Y") }}</td>
                    <td>
                        <a href="{{ sprintf(App\BlogModel::LINK_UPDATE, $item->id) }}">[E]</a> |
                        <a onclick="javascript: return confirm('Hapus kategori {{ $item->title }}?');"
                            href="{{ sprintf(App\BlogModel::LINK_DELETE, $item->id) }}">[D]</a>
                    </td>
                </tr>
                @empty

                @endforelse
            </tbody>
            <tfoot>
                <tr>
                    <th colspan="4" style="text-align: center;">
                        {{ $list_article->links() }}
                    </th>
                </tr>
            </tfoot>
        </table>
    </div>
</div>
@endsection