if status is-interactive
    starship init fish | source 
    alias s='yay -Syu --needed -q'
    alias c='clear'
    alias e='exit'
    alias ll='exa -l --icons --time-style=long-iso'
    alias ls='exa --icons -1'
end
