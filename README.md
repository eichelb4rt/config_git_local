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

Create a profiles json `~/.gitprofiles` similar to [`.gitprofiles-template`](./.gitprofiles-template).
Then you can configure your git locally by executing `config_git_local <profile_name>` in the repository.
The `name` field can either be used as a profile name with no further meaning, or it can automatically match a profile to a repo host (more on that in [Automation](#automation)).

### Automation

You can use `config-git-local --auto` in a repository to automatically select a profile that matches the host of the origin (e.g. `github.com` or `gitlab.com`).
You can also run `./setup_clone.sh` to create a bash alias `clone` that will automatically run `config-git-local --auto` after a cloning the repository.

### Examples

Assume we have the following `~/.gitprofiles`:

```json
[
    {
        "name": "github.com",
        "config": {
            "user.email": "firstname.lastname@gmail.com",
            "user.name": "my_name",
            "user.signingkey": "S0M3K3Y",
            "commit.gpgsign": "true"
        }
    },
    {
        "name": "gitlab.com",
        "config": {
            "user.email": "firstname.lastname@gmail.com",
            "user.name": "my_name",
            "user.signingkey": "S0M3-0TH3R-K3Y",
            "commit.gpgsign": "true"
        }
    },
    {
        "name": "other_profile",
        "config": {
            "user.email": "other.account@gmail.com",
            "user.name": "other_name",
            "commit.gpgsign": "false"
        }
    }
]
```

#### Manual

Then, in a repository `my_repo`, we could activate the profile `other_profile`:

```text
git clone git@github.com:my_name/my_repo.git
cd my_repo
config_git_local other_profile
```

#### Semi-Automatic

We could also activate the `github.com` profile in the repo automatically:

```text
git clone git@github.com:my_name/my_repo.git
cd my_repo
config_git_local --auto
```

#### Automatic

After executing `./setup_clone.sh`, we can also use `clone`:

```text
clone git@github.com:my_name/my_repo.git
```

after which git should locally be configured to the `github.com` profile in the repository.
