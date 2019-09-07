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

<div class="title"><b>Convert Youtube Video to Audio </b></div>
<form action="/youtube-to-audio" method="get">
    <div class="menu">
        <table class="post">
            <tr>
                <td style="width:50%">
                    Youtube URL :<br />
                    <input autocomplete="off" type="text" name="u" style="width:90%" placeholder="Youtube URL" required>
                </td>
                <td style=" width:50%">
                    &nbsp;<br />
                    {{ csrf_field() }}
                    <input type="submit" value="Convert to Audio">
                </td>
            </tr>
        </table>
    </div>
</form>

@if (!empty($youtubedl))
<div class="title"><b>{{ $youtubedl['metadata']['title'] }}</b></div>

@forelse ($youtubedl['details'] as $item)
<div class="title">
    <h1>&bull; {{ $item['format'] }}</h1>
</div>
<div class="menu">
    <table>
        <tbody>
            <tr>
                <td>Audio codec</td>
                <td>:</td>
                <td>{{ $item['acodec'] }}</td>
            </tr>
            <tr>
                <td>Ext</td>
                <td>:</td>
                <td>{{ $item['ext'] }}</td>
            </tr>
            <tr>
                <td>Filesize</td>
                <td>:</td>
                <td>{{  number_format(($item['filesize']/1024) / 1024, 2)  }} MB</td>
            </tr>
            <tr>
                <td>Download</td>
                <td>:</td>
                <td><a href="{{ $item['url'] }}">Download</a></td>
            </tr>
        </tbody>
    </table>
</div>
@empty
<div class="status">
    <center>Tidak ada audio format tersedia</center>
</div>
@endif

@endforelse
@endsection