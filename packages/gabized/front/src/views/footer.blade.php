    <div class="row footer">
        <div class="container">
            <div class="col-md-6 col-xs-12">
              <h4>Copyright {{ date( 'Y' )}} {{ $settings->sitename }}. Toate drepturile rezervate</h4>
            </div>
                <div class="col-md-6 col-xs-12 yeslogo wow animated lightSpeedIn">
                  <a href="https://gabized.com/" title="Strategic web development" target="_blank"><img src="{{ URL::asset('public/images/yeslogo.png')}}" alt=""></a>
                </div>
        </div>
    </div>

<!--jquery-->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<!--wow.js for position aware animations-->
<script src="{{URL::asset('public/js/wow.js')}}"></script>
<script src="{{URL::asset('public/js/sss.js')}}"></script>
<script>
  new WOW().init();

  $('.slider').sss({
slideShow : true, // Set to false to prevent SSS from automatically animating.startOn : 0, // Slide to display first. Uses array notation (0 = first slide).transition : 400, // Length (in milliseconds) of the fade transition.speed : 3500, // Slideshow speed in milliseconds.showNav : true // Set to false to hide navigation arrows.
});
</script>

    </body>
</html>
