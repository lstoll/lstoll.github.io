---
layout: post
title: Ninefold API Action with Fog
---

# {{ page.title }}

<p class="meta">19/05/2011</p>

I've been working on adding support for [Ninefold](http://ninefold.com) to [Fog](http://fog.io), and the code is now in a somewhat beta state. It is now possible to create a machine via the library, and set up networking to access it - then tear it all down.

## I want to have a look!

I've created a sample Rake script to demonstrate this, it can be found at [https://gist.github.com/ee5b65a8ed778ce61963](https://gist.github.com/ee5b65a8ed778ce61963). Intstructions on how to use it are included in the gist.

This will start up a server, allocate it a public IP, and map the SSH port. Then when prompted, it will then tear this environment down.

## I want to use it myself!

Currently, the code hasn't been submitted upstream, so you will need to work directly against the git repo. To do this, add this to your Gemfile:

    gem 'fog', :git => "https://github.com/ninefold/fog.git", :branch => "ninefold"

You can then bundle install. This is currently a moving target, so you may want to 'bundle update fog' often to ensure you're up to date.

See the [gist](https://gist.github.com/ee5b65a8ed778ce61963) for an example on how to interact with the API

You can also check out the repository, build install it, but this will override your system install - I'd reccomend using bundler.

If you want an interactive shell to experiment with the API:

    git clone https://github.com/ninefold/fog.git ninefold-fog
    cd ninefold-fog
    bundle install

Then set your API credentials in ~/.fog like in the [gist](https://gist.github.com/ee5b65a8ed778ce61963)

    bundle exec bin/fog

You can then interact with the Ninefold API via Ninefold[:compute]. Some examples:

    >> Ninefold[:compute].servers.all

    >> Ninefold[:compute].list_networks

    >> Ninefold[:compute].list_templates(:templatefilter => 'executable')

    >> Ninefold[:compute].list_service_offerings

    >> Ninefold[:compute].servers.new(:templateid => 421, :serviceofferingid => 67, :zoneid => 1)


## How does this all work anyway?

Via fog, items can be exposed in two ways. Requests, which map directly to the API. For naming convention reasons, we map the CamelCase API methods to underscore_methods. There are also Models, which map items at a higher level, and follow a set of fog conventions to make code somewhat portable across cloud providers.

At all times it will be handy to keep the API reference handy as we are wrapping that, it can be found at [https://ninefold.com/support/display/SPT/API+Documentation](https://ninefold.com/support/display/SPT/API+Documentation)

The best way to see the requests in action is via the tests at [https://github.com/ninefold/fog/tree/ninefold/tests/compute/requests/ninefold](https://github.com/ninefold/fog/tree/ninefold/tests/compute/requests/ninefold)

For interacting via the models, see the example [gist](https://gist.github.com/ee5b65a8ed778ce61963) and the [fog](http://fog.io) documentation

## I'm having problems!

If you find any bugs or have any feature requests, please log them at [https://github.com/ninefold/fog/issues](https://github.com/ninefold/fog/issues). If you just want to have a chat about how this works, or how you can use it, feel free to [contact](/contact) me.
