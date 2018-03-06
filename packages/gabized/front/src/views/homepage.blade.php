@include('front::header')





@section('alias')
    <div class="acenter">
        <h2><a href="{{ URL::to('pagina') }}/{{ $page->slug }}">{{ $page->title }}</a></h2>
        {!! $page->excerpt !!}
        <a href="{{ URL::to('pagina') }}/{{ $page->slug }}" class="btn btn-danger">More</a>
    </div>
@endsection

        @if(Session::has('flash_message'))
            <div class="row">
                <div class="container">
                    <div class="col-md-12">
            <div class="alert alert-success abs full"><span class="glyphicon glyphicon-ok"></span><em> {!! session('flash_message') !!}</em></div>
                    </div>
                </div>
            </div>
        @endif


    <div class="row" id="slider">
        <div class="slider animated pulse">
          @foreach ($slider as $slide)
                  <div class="slide" style="background:url({{ URL::asset('public/storage/')}}/{{ $slide->imagine }});">
                      <a href="{{ $slide->link }}"><h1>{{ $slide->titlu }}</h1></a>
                  </div>
          @endforeach
        </div>
    </div>





    <div class="row threeblocks">
        <div class="container">
            <div class="col-md-4">
                stuff here
            </div>
                <div class="col-md-4">
                    more stuff
                </div>
            <div class="col-md-4">
                and even more
            </div>
        </div>
    </div>

    <div class="row homecontent">
        <div class="container">
            <div class="col-md-5 mtop40">
                <img src="{{ URL::asset('public/storage/')}}/{{ $page->image }}" alt="">
            </div>
                <div class="col-md-7">
                    @yield('alias')
                </div>

        <div class="clr"></div>

            <div class="col-md-6 mtop"><br>
                <form action="" id="contact" method="post">
                      <div class="form-group" id="contactform">
                        <input class="form-control" name="name" id="name" placeholder="Nume si prenume" type="text">
                      </div>
                      <div class="form-group">
                        <input class="form-control" name="email" id="email" placeholder="Email" type="email">
                      </div>
                      <div class="form-group">
                        <textarea class="form-control" placeholder="Mesaj" name="message" id="message" rows="3"></textarea>
                      </div>
                          <div class="form-group toright">
                            <button type="submit" name="form_contact" value="1" class="btn btn-danger">Trimite</button>
                          </div>
                </form>
            </div>

                <div class="col-md-6 acenter mtop">
                    <h3><a href="tel:{{ $settings->tel1 }}">
                        {{ $settings->tel1 }}
                        </a></h3>
                    <h3><a href="tel:{{ $settings->tel2 }}">{{ $settings->tel2 }}</a></h3>
                    <h3><a href="mailto:{{ $settings->email1 }}">{{ $settings->email1 }}</a></h3>
                    <h3><a href="mailto:{{ $settings->email2 }}">{{ $settings->email2 }}</a></h3>

                    <h5 class="mtop">{{ $settings->address }}</h5>
                    <div class="form-group mtop">
                      <a class="socials" href="{{ $settings->facebook }}" title="" target="_blank"><i class="fa fa-facebook"></i></a>
                      <a class="socials" href="{{ $settings->google }}" title="" target="_blank"><i class="fa fa-google-plus"></i></a>
                    </div>
                </div>
        </div>
    </div>




@include('front::footer')
