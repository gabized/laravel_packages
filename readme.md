![Laravel License][ico-laravel]
[![Software License][ico-license]](LICENSE.md)

## About Laravel

Laravel is a web application framework with expressive, elegant syntax. We believe development must be an enjoyable and creative experience to be truly fulfilling. Laravel attempts to take the pain out of development by easing common tasks used in the majority of web projects, such as:

Laravel is accessible, yet powerful, providing tools needed for large, robust applications. A superb combination of simplicity, elegance, and innovation give you tools you need to build any application with which you are tasked.

## About this app

Simple demo website with Voyager for admin (admin/login), and simple frontend package.

The frontend is built as a package in order to separate from the core. Non Laravel files are in the following locations:

- packages/gabized

- public/assets/voyager >> keeping the assets outside the vendor folder so an update will not wipe them out

- resources/views/vendor/voyager >> keeping the views outside of the etc..

- config/voyager.php >> comes by default when you install voyager, but it contains custom settings

- config/app.php >> register the service providers like this: TCG\Voyager\VoyagerServiceProvider::class, gabized\front\frontServiceProvider::class,

- public/css/styles.css


## Installing

Download files, edit .env file, import db, edit .env file, pray.
If you can't make it work, build your own.

## Contributing

Clone me, download me, fork me, do whatever you like. NO pull requests will be accepted here.

## Security Vulnerabilities

If you discover any security related issues, please email [Gabi](gabi@gabized.com) instead of using the issue tracker.

## License

The Laravel framework is open-sourced software licensed under the [MIT license](http://opensource.org/licenses/MIT).
This app is licensed under the [MIT license](http://opensource.org/licenses/MIT).

[ico-license]: https://img.shields.io/badge/license-MIT-brightgreen.svg?style=flat-square
[ico-laravel]: https://laravel.com/assets/img/components/logo-laravel.svg
