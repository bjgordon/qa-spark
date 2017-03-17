#!/usr/bin/env bash

# include build env vars
source "$(dirname "$0")/buildrc"

# install all the needed ruby gems
gem install --conservative bundler
bundle check --path=vendor/bundle || bundle install --path=vendor/bundle --jobs=4 --retry=3


