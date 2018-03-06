@include('front::headersearch')





@section('pages')
    <h1>Results for "{{ $find }}"</h1>
    <ul class="search_results">
    @foreach ($pages as $page)
        <li>
            <h2>{{ $page->title }}</h2>
            {!! $page->excerpt !!}
            <div class="clr"></div>
            <a href="#" class="btn btn-success">Read more</a>
        </li>
    @endforeach
    </ul>
@endsection

@section('pages_like')
    <h1>Results for "{{ $find }}"</h1>
    <ul class="search_results">
    @foreach ($pages_like as $page)
        <li>
            <h2>{{ $page->title }}</h2>
            {!! $page->excerpt !!}
            <div class="clr"></div>
            <a href="#" class="btn btn-success">Read more</a>
        </li>
    @endforeach
    </ul>
@endsection

@section('posts')
    <h1>Results for "{{ $find }}"</h1>
    <ul class="search_results">
    @foreach ($posts as $page)
        <li>
            <h2>{{ $page->title }}</h2>
            {!! $page->excerpt !!}
            <div class="clr"></div>
            <a href="#" class="btn btn-success">Read more</a>
        </li>
    @endforeach
    </ul>
@endsection

@section('posts_like')
    <h1>Results for "{{ $find }}"</h1>
    <ul class="search_results">
    @foreach ($posts_like as $page)
        <li>
            <h2>{{ $page->title }}</h2>
            {!! $page->excerpt !!}
            <div class="clr"></div>
            <a href="#" class="btn btn-success">Read more</a>
        </li>
    @endforeach
    </ul>
@endsection

@section('no_results')
    <h1>We found no pages for <strong>{{ $find }}</strong></h1>
@endsection



<div class="row pagecontent">
    <div class="container">
        <div class="col-md-12">
                @if (count($pages) > 0)
                    @yield('pages')
                @elseif (count($pages_like) > 0)
                    @yield('pages_like')
                @else
                    @yield('no_results')
                @endif
        </div>
    </div>
</div>





@include('front::footer')
