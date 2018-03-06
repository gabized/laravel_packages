<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Search - {{ $find }} - {{ $settings->sitename }}</title>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="title" content="Search - {{ $find }}" />
        <meta name="keywords" content="search, {{ $find }}" />
        <meta name="description" content="search" />

        <meta name="rating" content="General"/>
        <meta name="revisit-after" content="1 Days"/>
        <meta name="robots" content="index, follow, all"/>

        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

        <!-- Optional theme -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">

        <link href="https://fonts.googleapis.com/css?family=Open+Sans+Condensed:300,300i,700" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,600,700" rel="stylesheet">

        <link href="{{URL::asset('public/css/styles.css')}}" rel="stylesheet">
        <link href="{{URL::asset('public/css/animate.css')}}" rel="stylesheet">

    </head>
    <body>

    <div class="row topblack">
        <div class="container">
            <div class="col-md-6">
                <a href="{{ url('/') }}">
                    <img src="{{ URL::asset('public/images/logo.png')}}" class="logo" alt="">
                </a>
            </div>

                <div class="col-md-3">
                    <h4><i class="fa fa-phone"></i> <a href="tel:{{ $settings->tel1 }}">{{ $settings->tel1 }}</a></h4><!--wip: clean all phone numbers. clear spaces etc-->
                </div>
                <div class="col-md-3">
                    <h4><i class="fa fa-envelope-o"></i> <a href="mailto:{{ $settings->email1 }}">{{ $settings->email1 }}</a></h4>
                </div>
        </div>
    </div>

    <div class="row topmenu">
        <div class="container">
            <!-- simple 1 level menu, nothing fancy for now-->
            <ul class="nav">
                <li class="@if($active == '/')
                            active
                            @endif"><a href="{{ url('/') }}">Home</a></li>
                @foreach ($menufront as $link)
                    <li class="@if($active == $link->pagina)
                                active
                               @endif"><a href="{{ url('/') }}/pagina/{{ $link->pagina }}">{{ $link->name }}</a></li>
                @endforeach
                <li class="search">
                    <form action="{{ url('/') }}/search" method="GET">
                        <input type="text" name="find" required value="{{ $find }}"/>
                        <button type="submit"><i class="fa fa-search" aria-hidden="true"></i></button>
                    </form>
                </li>
            </ul>
        </div>
    </div>
