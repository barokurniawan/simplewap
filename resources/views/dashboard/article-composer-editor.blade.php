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

<div class="title"><b>Tulis Artikel </b></div>
<form action="article/update" method="post" class="menu">
    <table class="post">
        <tbody>
            <tr>
                <td style="width:50%">
                    Judul :<br>
                    <input value="{{ $article->title }}" autocomplete="off" type="text" name="title" style="width:90%"
                        required>
                </td>
                <td style=" width:50%">
                    Kategory :<br>
                    <select name="category_id" required>
                        @forelse ($list_category as $item)
                        <option {{ (($article->category_id == $item->category_id) ? "selected" : "") }}
                            value="{{ $item->category_id }}">{{ $item->category_name }}</option>
                        @empty
                        <option value="">-- Tidak ada kategory --</option>
                        @endforelse
                    </select>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <textarea name="description" id="editor" name="editor">{{ $article->description }}</textarea>
                </td>
            </tr>
            <tr>
                <td style="text-align: right" class="content" colspan="2">
                    {{ csrf_field() }}
                    <input type="hidden" name="article_id" value="{{ $article->id }}">
                    <input type="hidden" name="slug" value="{{ $article->slug }}">
                    <input type="submit" value="Save">
                </td>
            </tr>
        </tbody>
    </table>
</form>
<script>
    $(document).ready(function(){
        var editor = new Jodit($('#editor')[0], {
            uploader: {
                url: 'jodit/uploader',
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                }
            },
            filebrowser: {
                ajax: {
                    url: 'jodit/filebrowser'
                }
            }
        });
    });
</script>
@endsection