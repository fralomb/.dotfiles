# more options: man zshoptions - options are case insentive and underscores are ignored
setopt share_history
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

# autoload -U up-line-or-beginning-search
# autoload -U down-line-or-beginning-search
# zle -N up-line-or-beginning-search
# zle -N down-line-or-beginning-search

# import all utility functions
for config_file ("$ZDOTDIR"/lib/*.zsh); do
  [[ -f "$config_file" ]] && source "$config_file"
done

# source other configurations
zsh_add_file "config/prompt.zsh"
zsh_add_file "config/aliases.zsh"
zsh_add_file "config/key-bindings.zsh"
zsh_add_file "config/fzf.zsh"

# add plugins
zsh_add_plugin "zsh-users/zsh-autosuggestions" "$ZSH_MAINDIR"
zsh_add_plugin "zsh-users/zsh-syntax-highlighting" "$ZSH_MAINDIR"
# zsh_add_plugin "unixorn/fzf-zsh-plugin" "$ZSH_MAINDIR"

