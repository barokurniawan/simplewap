@extends('landing')
@section('page-content')

@if ($errors->any())
<div class="err">
    <h3>Error : </h3>
    &bull; {{ $errors->first() }}
</div>
@endif

<div class="title"><b>List Setting</b></div>
<div class="menu">
    <div class="table-responsive">
        <table class="table">
            <thead>
                <tr>
                    <th style="width: 20px;">No</th>
                    <th>Key</th>
                    <th>Value</th>
                    <th>#</th>
                </tr>
            </thead>
            <tbody>
                @forelse ($list_setting as $i => $item)
                <tr>
                    <td>{{ $i+1 }}</td>
                    <td>{{ $item->confkey }}</td>
                    <td>{{ $item->confvalue }}</td>
                    <td>
                        <a href="{{ sprintf(App\SimplewapSetting::LINK_UPDATE, $item->confkey) }}">[E]</a>
                    </td>
                </tr>
                @empty
                <tr>
                    <td colspan="4">Tidak data</td>
                </tr>
                @endforelse
            </tbody>
        </table>
    </div>
</div>
@endsection