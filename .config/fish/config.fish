set fish_greeting "" 

oh-my-posh init fish --config /mnt/c/Users/chris/poshthemes/takuya.omp.json | source

if status is-interactive
    # Commands to run in interactive sessions can go here
end


# Aliases
alias ls="exa --icons"
alias cat="batcat"
alias dotfiles="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"
alias vim="nvim"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval /home/chris/miniconda3/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<

