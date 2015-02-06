# CodeUnion Counting Application

This is a basic web application written in Ruby using the
[Sinatra web framework](http://www.sinatrarb.com/).  It's meant to illustrate
a few of the key concepts that make web applications different than the
standalone programs or HTML pages you're used to writing.  It's intentionally
minimal — no databases, no external code, and no templates.

## What to Build

Once you have the application running (see below), click the various links
on the homepage.  As you visit different pages, pay attention to which parts of
the URL change and which don't.

Open `bake-app.rb` in your editor of choice.  Try to figure out which parts
of the page you're looking at correspond to which pieces of code in
`bake-app.rb`.  It helps a lot to have the browser and code open side-by-side
so that you can look at both simultaneously.

Your goal is to make the web application do something — _anything_ — different
than what it does when you first run it.  This can involve anything from
adding new pages to adding new behavior to a particular page.  Here are some
ideas (these will only make sense after you've run the application and poked
around a bit):

1.  The page that displays a list of baked goods start counting from `0`.
    Can you make it count from `1` instead?
2.  Pick one of the pages and add the ability to specify the background color
    in the URL, e.g., if someone visits `http://example.com/?background=green`
    the page will have a green background instead of white.
3.  Add a form to the homepage that submits a `GET` request to `/bake` and
    contains two `<input type="text">` fields: one named `baked_good` and
    one named `count`.  What happens when you submit the form?
4.  Modify the `/bake` page so that it responds to an additional parameter
    in the URL.  You can choose what the parameter is and how your application
    responds to it.

## Running the Application

### Installing the Required Dependencies

Before you run this application, you have to install the libraries it requires
to do its work (these are specified in the `Gemfile`).  To do this, run

```shell-session
$ bundle install --without production
```

This will ensure you've installed all the libraries required to run the
application.  **Note**: you only have to run this command _once_.

### Launching the Web Application

Next, run the following command:

```shell-session
$ ruby bake-app.rb
```

To stop your application, press `Ctrl+c`.  That's "Control" plus the "c" key.
