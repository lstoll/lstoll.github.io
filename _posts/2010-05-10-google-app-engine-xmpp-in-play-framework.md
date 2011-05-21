---
layout: post
title: Google App Engine XMPP in Play Framework
---

# {{ page.title }}

<p class="meta">8/6/2010</p>

Google's documentation for receiving XMPP messages on App Engine involves running the HttpServletRequest through XMPPServiceFactory.parseMessage to extract the details, however on Play you don't get access to the HttpServletRequest, so you can't use their message parser. Fortunately the message is really just POSTed form data, so you can easily extract it in a handler bound to "POST   /_ah/xmpp/message/chat/" like this:

<script src="http://gist.github.com/395330.js">/**/</script>
