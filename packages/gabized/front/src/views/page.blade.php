@include('front::header')





@section('alias')
    <h1>{{ $page->title }}</h1>
    {!! $page->body !!}
    <div class="acenter">
        <img src="{{URL::asset('public/storage')}}/{{ $page->image }}" alt="">
    </div>
    @if ($page->slug == 'contact')
        <iframe src="https://www.google.com/maps?q={{ $settings->address }}&output=embed" style="width:100%; height:400px"></iframe>
    @endif
@endsection


<div class="row pagecontent">
    <div class="container">
        <div class="col-md-12">
            @yield('alias')
        </div>
    </div>
</div>





@include('front::footer')
