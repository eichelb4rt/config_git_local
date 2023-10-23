#!/bin/bash

mkdir -p ~/.bin

install ./config_git_local ~/.bin/config_git_local
sudo cp config_git_local-completion.bash /etc/bash_completion.d/config_git_local-completion.bash