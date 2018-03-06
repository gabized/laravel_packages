<?php

namespace gabized\front;

use Illuminate\Http\Request;
use App\Http\Requests;
use App\Http\Controllers\Controller;
use gabized\front\models\FrontMenu;
use gabized\front\models\Page;
use gabized\front\models\Post;
use gabized\front\models\Slider;
use gabized\front\models\Contact;
use gabized\front\models\FrontSetting;
use View;

class FrontController extends Controller {
    //
    public function __construct() {

    $menufront = FrontMenu::all()->sortBy('order');
    $settings  = new \stdClass();
    $setti  = FrontSetting::all();
    foreach ($setti as $value) {
        $settings->{$value->key} = $value->value;
    }

    // Sharing is caring
    View::share('menufront', $menufront);
    View::share('settings', $settings);
  }

    public function index() {
        //return "yes, homepage.";
        $page = Page::where('slug', 'homepage')
                      ->first();
        $slider = Slider::all()->sortBy('order');
        $active = '/';
        return view('front::homepage', compact('page', 'active', 'slider'));
    }

    public function page($alias) {
        $page = Page::where('slug', $alias)
                        ->first();
        $active = $alias;

        return view('front::page', compact('page', 'active'));
    }

    public function search(Request $request) {
        $find = $request['find'];
        $pages = Page::where('slug', $find)
                      ->orWhere('title', $find)
                      ->get();
        $pages_like = Page::where('slug', 'like', '%' . $find . '%')
                      ->orWhere('title', 'like', '%' . $find . '%')
                      ->get();

        $posts = Post::where('slug', $find)
                      ->orWhere('title', $find)
                      ->get();
        $posts_like = Post::where('slug', 'like', '%' . $find . '%')
                      ->orWhere('title', 'like', '%' . $find . '%')
                      ->get();


        $active = '/';
        //return $request['find'];
        return view('front::search', compact('pages', 'pages_like', 'posts', 'posts_like', 'active', 'find'));
    }

    public function contact(Request $request) {
        Contact::create($request->all());
         \Session::flash('flash_message','Mesajul a fost trimis cu succes!');
        return $this->index();
        //return redirect()->action('FrontController@index')->with('success', 'Data saved!');
        //return redirect('front::page')->with('success', 'Data saved!');
        //return $request['message'];
    }

    public function directlink($directlink) { //rudimental 404.
        return "this page does not exist. yet";
    }


}
?>
