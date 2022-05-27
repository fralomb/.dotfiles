#!/bin/sh

## autoload vcs and colors
autoload -Uz vcs_info
autoload -U colors && colors

# enable only git 
zstyle ':vcs_info:*' enable git svn

# setup a hook that runs before every ptompt. 
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst


# format our main prompt for hostname current folder, and permissions.
PROMPT='%{$fg_bold[green]%}➜(%n) %{$fg_bold[green]%} %{$fg[cyan]%}%c %{$fg_bold[blue]%}$(git_prompt_info)%{$fg_bold[blue]%}%{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="[%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}]%{$fg[yellow]%} ✗ %{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%}] "

ZSH_PROMPT_BASE_COLOR="%{$fg_bold[blue]%}"
ZSH_THEME_REPO_NAME_COLOR="%{$fg_bold[red]%}"

