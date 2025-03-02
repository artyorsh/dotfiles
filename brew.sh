#!/bin/bash

brew_command="brew $@"
su homebrew -c "$brew_command"
