#!/bin/bash

mkdir -p ~/.bin

install ./config-git-local ~/.bin/config-git-local
sudo cp config-git-local-completion.bash /etc/bash_completion.d/config-git-local-completion.bash