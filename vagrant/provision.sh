#!/bin/bash -e

sudo apt-get update
# sudo apt-get upgrade

# Git, Python3 and Ruby are already installed

# https://stackoverflow.com/questions/2853803/how-to-echo-shell-commands-as-they-are-executed
set -v
set -x

# Java
if [[ -z $(which java) ]]; then
  echo No Java installed. Instanlling OpenJdk with apt-get
  sudo apt-get -y install openjdk-8-jdk
else
  echo Java is already installed.
fi

# Pip
if [[ -z $(which pip3) ]]; then
  echo No pip 3.0. Installing...
  sudo apt -y install python3-pip
else
  echo Pip3 is already installed.
fi
