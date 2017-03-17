#!/usr/bin/env bash

# include build env vars
source "$(dirname "$0")/buildrc"

# main script function
#
main() {
  case "${GITBRANCH}" in
    master)
      # install the cloud foundry cli tool
      curl -v -L -o cf-cli_amd64.deb 'https://cli.run.pivotal.io/stable?release=debian64&version=6.18.1&source=github-rel'
      sudo dpkg -i cf-cli_amd64.deb

      cf login -a $CF_API \
        -u $CF_USER \
        -p $CF_PASSWORD \
        -o $CF_ORG \
        -s $CF_SPACE

      cf push
      ;;
    *)
      echo "I will not deploy this branch"
      exit 0
      ;;
  esac
}

main $@
