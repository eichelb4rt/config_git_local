# Configure Git Locally

Small tool to help configure git locally for different repositories on different sites

## Requirements

You need to have python3 ([download here](https://www.python.org/downloads/)) installed with the packages in `requirements.txt`.
To install these packages:

```text
pip install -r requirements.txt
```

You might need to add this to your `~/.profile`:

```text
if [ -d "$HOME/.bin" ] ; then
    PATH="$HOME/.bin:$PATH"
fi
```

## Installation

Just run `./install.sh`. This should also be run whenever you want to update this script.

## Usage

```text
usage: config_git_local [-h] [-l] profile_name

positional arguments:
  profile_name  Name (stem) of the profile file in the profile directory.

options:
  -h, --help    show this help message and exit
  -l, --list    Lists available profiles (no other arguments needed).
```
