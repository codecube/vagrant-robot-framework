#!/bin/bash
#set -e

timedatectl set-timezone Europe/London
locale --all-locales | fgrep "en_US.UTF-8" > /dev/null || locale-gen "en_US.UTF-8"
