---
layout: post
title: Compass with Rails 3 on Heroku
---

# {{ page.title }}

<p class="meta">8/6/2010</p>

I've noticed plenty of posts around the net on how to get this to work, but none of them worked as is for me on a Rails 3 Beta 3 app using Compass and the Compass 960 plugin

Here's my cobbled together solution - it's also a little simpler than some, as it doesn't try and do things different for heroku and local dev - it keeps it the same, and seems to work OK.

1) Make sure you are using the latest gems

<script src="http://gist.github.com/428746.js?file=Gemfile">/**/</script>

2) Make sure config/compass.rb has any plugins referenced, and set it's css_dir to tmp/stylesheets - this is writable on heroku.

<script src="https://gist.github.com/428746.js?file=config/compass.rb">/**/</script>

3) Create a initializer in config/initializers/stylesheets.rb , and set it to serve the generated stylesheets from tmp/stylesheets under /stylesheets . This has to be loaded before the Rack::Sendfile middleware, otherwise it will try to X-Sendfile the CSS file which doesn't work on Heroku, rather than just rendering it's contents.

<script src="https://gist.github.com/428746.js?file=config/compass.rb">/**/</script>
