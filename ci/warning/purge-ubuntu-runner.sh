#!/usr/bin/env bash

# !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
# WARNING: THIS IS NOT TO BE USED LOCALLY, BUT ONLY IN GITHUB ACTIONS TO CLEAR
# DISK SPACE ON UBUNTU. IT IS NOT MARKED AS EXECUTABLE BY DEFAULT FOR SAFETY AND
# ONLY RUNS IN CI.
# !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
if [[ -n "$CI" ]]; then
  set -e

  sudo rm -rf /usr/share/dotnet
  sudo rm -rf /usr/share/swift
  sudo rm -rf /usr/share/mysql
  sudo rm -rf /usr/share/az_*
  sudo rm -rf /usr/share/postgresql-common

  sudo rm -rf /opt/ghc
  sudo rm -rf /opt/az
  sudo rm -rf /opt/pipx
  sudo rm -rf /opt/microsoft
  sudo rm -rf /opt/google
  sudo rm -rf /opt/hostedtoolcache

  sudo rm -rf /usr/local/lib/android
  sudo rm -rf /usr/local/lib/heroku
fi
