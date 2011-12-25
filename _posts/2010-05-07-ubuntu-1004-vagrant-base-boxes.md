---
layout: post
title: Ubuntu 10.04 Vagrant Base Boxes
---

# {{ page.title }}

<p class="meta">07/05/2010</p>

I've made a pair of base boxes for Ubuntu 10.04 Server (Lucid Lynx), one 32 bit, one 64 bit.

They are set up as per the guide, with chef 0.8.10 installed for provisioning. It's using the packaged ruby, with a custom installed rubygems as /usr/bin/gem. It also has the 3.1.6 additions, and is set up with the normal public SSH keys

You can add them by running:

* 32 Bit

    $ vagrant box add lucid32 http://s3.lds.li/vagrant/lucid32.box

* 64 Bit

    $ vagrant box add lucid64 http://s3.lds.li/vagrant/lucid64.box

I intend to update them occasionally as new versions of chef are released, will package updates as needed.
