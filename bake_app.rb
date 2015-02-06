require "sinatra"     # Load the Sinatra web framework

get("/") do
  html = ""

  app_description = "<p>This application is meant to highlight some of the essential ideas in web development.  You should already be familiar with some basic HTML and know how to create a standalone, static HTML document that you can open with your browser.</p>

  <p>At its core, every web application has the same job: listen for incoming requests, generate an HTML document, and send that document back to the browser.  Unlike a static HTML document, a web application can respond to dynamic, user-supplied information.  If a static HTML document is like a vending machine then a web application is like a restaurant with a real, live chef.</p>
  "

  html.concat("<h1>Hello, World!</h1>")
  html.concat(app_description)
  html.concat("<p>Start exploring by clicking the links below.</p>")
  html.concat("<h2>Static Pages</h2>")
  html.concat("<p>These pages don't respond to any user-supplied data.</p>")
  html.concat("<ul>")
  html.concat("<li><a href='/waffles'>Plain ol' waffles</a></li>")
  html.concat("<li><a href='/waffles/chocolate'>Chocolate waffles</a></li>")
  html.concat("</ul>")

  html.concat("<h2>Dynamic Pages</h2>")
  html.concat("<p>These pages <em>do</em> respond to user-supplied data.  When you visit the links below, look at the URL.  Everything after the <code>?</code> character is called the _query string_ and it's one place we can supply dynamic information. </p>")
  html.concat("<ul>")
  html.concat("<li><a href='/waffles/custom?type=banana'>Banana waffles</a></li>")
  html.concat("<li><a href='/waffles/custom?type=blueberry'>Blueberry waffles</a></li>")
  html.concat("<li><a href='/waffles/custom?type=nutella'>Nutella waffles</a></li>")
  html.concat("<li><a href='/bake?baked_good=cookies&count=10'>Bake 10 cookies</a></li>")
  html.concat("<li><a href='/bake?baked_good=loaves+of+bread&count=5'>Bake 5 loaves of bread</a> — notice how we represent spaces in the URL.</li>")
  html.concat("<li><a href='/bake?baked_good=cupcakes&count=1138'>Bake 1138 cupcakes</a></li>")
  html.concat("</ul>")

  body(html)
end

get("/waffles") do
  html = ""

  html.concat("<h1>Waffle Time</h1>")
  html.concat("<p>Everybody loves waffles.</p>")
  html.concat("<p><a href='/'>Back to the homepage</a></p>")

  body(html)
end

get("/waffles/chocolate") do
  html = ""

  html.concat("<h1>Chocolate Waffle Time</h1>")
  html.concat("<p>Chocolate waffles: better than regular waffles.</p>")
  html.concat("<p><a href='/'>Back to the homepage</a></p>")

  body(html)
end

# Visit the following URLs and see what happens:
#   /waffles/custom?type=banana
#   /waffles/custom?type=blueberry
#   /waffles/custom?type=nutella
get("/waffles/custom") do
  waffle_type = params["type"].capitalize

  html = ""

  html.concat("<h1>#{waffle_type} Waffle Time</h1>")
  html.concat("<p>#{waffle_type} waffles: better than regular waffles.</p>")
  html.concat("<p>Change the value of the <code>type</code> parameter in the URL and see what happens.</p>")
  html.concat("<p><a href='/'>Back to the homepage</a></p>")
  body(html)
end

# Visit, e.g., /bake?baked_good=waffles&count=20
get("/bake") do
  count      = params["count"].to_i
  baked_good = params["baked_good"]

  html = ""
  html.concat("<h1>Baking Time</h1>")
  html.concat("<p><a href='/'>Back to the homepage</a></p>")
  html.concat("<p>Change the value of the <code>count</code> and <code>baked_good</code> parameters in the URL and see what happens!</p>")
  html.concat("<p>I like #{baked_good}, too.  Let's bake #{count} of them.")

  html.concat("<ul>")
  count.times do |num|
    html.concat("<li>#{baked_good} number #{num}</li>")
  end
  html.concat("</ul>")

  body(html)
end
