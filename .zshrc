# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/vlpatton/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

autoload -Uz vcs_info
precmd() { vcs_info }

zstyle ':vcs_info:git:*' formats '%b '
setopt PROMPT_SUBST

if [ -n "$SSH_CLIENT" ]; then
    PROMPT='%F{#11D}%n@%m%f %F{#1D1}%~%f %F{#D11}${vcs_info_msg_0_}%f%# '
else
    PROMPT='%F{#11D}%n%f %F{#1D1}%~%f %F{#D11}${vcs_info_msg_0_}%f%# '
fi

export PATH=$PATH:/home/vlpatton/.cargo/bin
alias ls="ls --color"
