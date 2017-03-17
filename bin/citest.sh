#!/usr/bin/env bash

# include build env vars
source "$(dirname "$0")/buildrc"

# run our tests
bundle exec rspec
