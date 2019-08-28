@extends('landing')
@section('page-content')

@if ($errors->any())
<div class="status">
    <h3>Error : </h3>
    &bull; {{ $errors->first() }}
</div>
@endif

<form action="action/new-shout?redirect=shoutbox" method="post">
    {{ csrf_field() }}
    <div class="menu">
        <table class="post">
            <tr>
                <td style="width:50%">
                    Nama :<br /><input autocomplete="off" type="text" name="name" style="width:90%" placeholder="nama">
                </td>
                <td style=" width:50%">
                    Situs :<br /><input autocomplete="off" type="text" name="url" style="width:90%"
                        placeholder="http://">
                </td>
            </tr>
            <tr>
                <td style="width:50%">
                    Pesan :<br /><input autocomplete="off" type="text" name="text" style="width:90%"
                        placeholder="pesan">
                </td>
                <td style=" width:50%">
                    Kelamin :<br />
                    <select name="icon" style="width:99%" required>
                        <option value="">pilih ikon</option>
                        <option value="1">Laki-laki</option>
                        <option value="2">Perempuan</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td class="content" colspan="2">
                    <input type="submit" value="Shout">
                    <a href="smiles.php">Smiles</a>
                    <a href="bbcode.php">BB-Code</a>
                </td>
            </tr>
        </table>
    </div>
</form>
<table class="post">
    <tbody>
        @forelse ($list_shout as $item)
        @php
        $uaParser->setUserAgent($item->ua)
        @endphp
        <tr>

            @if ($item->icon == 2)
            @php ($avatar = "assets/icons/female.png")
            @else
            @php ($avatar = "assets/icons/male.png")
            @endif

            <td class="icon"><img src="{{ $avatar }}" alt="*"></td>
            <td class="title">
                <b>
                    @if (!empty($item->url))
                        <a href="external/redirect?u={{ urlencode($item->url) }}">{{ $item->name }}</a>                
                    @else
                        {{ $item->name }}
                    @endif
                </b>
            </td>
        </tr>
        <tr>
            <td class="menu" colspan="2">
                <div style="text-align:right">{{ date("d/m/Y H:i", $item->time) }}</div>
                {{ $item->text }}
                <br>
                <div style="text-align:right">{{ sprintf("%s on %s", $uaParser->browser(), $uaParser->platform()) }}
                </div>
            </td>
        </tr>
        @empty
            <div class="status">Tidak ada pesan.</div>
        @endforelse

        @if (strlen($list_shout->links()) > 0)
            <tr class="asdasd">
                <td class="menu" colspan="2" style="text-align:center">
                    {{ $list_shout->links() }}
                </td>
            </tr>
        @endif
        
    </tbody>
</table>
@endsection