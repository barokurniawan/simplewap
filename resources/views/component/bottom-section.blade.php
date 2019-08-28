@forelse ($bottom_list as $item)
@if (empty($item->url) || empty($item->count))
    <div class="title"><b>{{ $item->name }}</b></div>
@else
    <div class="menu">&raquo; <a href="{{ $item->url }}" title="News">{{ $item->name }}</a> (0)</div>
@endif    
@empty
@endforelse