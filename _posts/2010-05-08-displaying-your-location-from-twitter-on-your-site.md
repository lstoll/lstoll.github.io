---
layout: post
title: Displaying your Location from Twitter on your Site
---

# {{ page.title }}

<p class="meta">8/6/2010</p>

I was giving this site a little tweak, and one thing I wanted to add was my current location to my contact details - I move around a lot, and getting calls at stupid hours was begging to get a little annoying.

The catch was, I didn't want to have to update this information manually all the time - it would get tiresome quickly, and I would end up letting it go stale. I usually geotag tweets semi-regularly from my phone, so I figured that would be a great place to get the data.

I sat down, and whipped up a quick <a href="http://www.sinatrarb.com/">Sinatra</a> application that looks for the latest tweet with coordinates, extracts them, and uses the google reverse geocoding service to determine the city name. To make it a little less stalkerish I kept the city as the finest level of granularity. This is then exported as a simple little JSON-P Service, as well as a redirect to a map of the location.

I deployed it to <a href="http://heroku.com">Heroku</a> like usual, I love how simple they make it to get an app up and running. The running app can be found at <a href="http://whereami.lds.li">http://whereami.lds.li</a>, and the code is on github at <a href="http://github.com/lstoll/whereami">http://github.com/lstoll/whereami</a>

I integrate it in to this site with the following script:

<script src="http://gist.github.com/393747.js">/**/</script>
