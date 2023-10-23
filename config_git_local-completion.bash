#!/usr/bin/env bash

_config_git_local_completions()
{
    CURRENT_WORD="${COMP_WORDS[COMP_CWORD]}"
    PREV_WORD="${COMP_WORDS[COMP_CWORD - 1]}"
    WORD_COUNT="${#COMP_WORDS[@]}"

    complete_options=""
    if [ "$WORD_COUNT" == "2" ]; then
        # choose sub commands
        # (config_git_local gith -> config_git_local github)
        complete_options=$(config_git_local -l)
    fi

    COMPREPLY=($(compgen -W "$complete_options" "$CURRENT_WORD"))
}

complete -F _config_git_local_completions config_git_local