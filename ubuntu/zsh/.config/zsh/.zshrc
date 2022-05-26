
# History in cache directory:
HISTSIZE=10000000
SAVEHIST=10000000
HISTFILE="${ENVSPATH:-$HOME/.cache}/.zsh/history"

# more options: man zshoptions - options are case insentive and underscores are ignored
setopt append_history
setopt nomatch
setopt menu_complete
setopt interactive_comments

unsetopt beep

# completion
autoload -Uz compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
# compinit
_comp_options+=(globdots)		# Include hidden files.

# Colors
autoload -Uz colors && colors

# import all utility functions
for config_file ("$ZDOTDIR"/lib/*.zsh); do
  [[ -f "$config_file" ]] && source "$config_file"
done

# source other configurations
zsh_add_file "prompt.zsh"
