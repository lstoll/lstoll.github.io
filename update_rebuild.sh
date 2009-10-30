#!/bin/bash

# This is intended to run as a changegroup hook
hg update -C
/usr/local/bin/jekyll /home/lstoll/hg/lstoll.net /home/lstoll/sites/lstoll.net
