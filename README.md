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

Create a profile json (e.g. `my_profile.json`) similar to [`example.json`](./example.json) and put it into `~/.git_profiles/`.
Then you can configure your git locally by executing `config_git_local <profile_name>` in the repository. Example:

```text
cd my_repo
config_git_local my_profile
```

You can also execute `config_git_local -h` for help.

```text
usage: config_git_local [-h] [-l] profile_name

positional arguments:
  profile_name  Name (stem) of the profile file in the profile directory.

options:
  -h, --help    show this help message and exit
  -l, --list    Lists available profiles (no other arguments needed).
```
