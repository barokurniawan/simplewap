@forelse ($bottom_list as $item)
@if ($item->type == "text")
<div class="title"><b>{{ $item->name }}</b></div>
@else
<div class="menu">
    &nbsp;&nbsp;&nbsp;<a href="{{ asset($item->url) }}" title="News">{{ $item->name }}</a>
</div>
@endif
@empty
@endforelse