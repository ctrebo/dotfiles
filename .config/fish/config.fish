set fish_greeting "" 

#oh-my-posh init fish --config /mnt/c/Users/chris/poshthemes/takuya.omp.json | source

if status is-interactive
    # Commands to run in interactive sessions can go here
    eval /home/chris/miniconda3/bin/conda "shell.fish" "hook" $argv | source
end


# Aliases
alias ls="exa --icons"
alias cat="bat"
alias dotfiles="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"
alias vim="nvim"
alias fd="fdfind"

# Vim keytypes
fish_vi_key_bindings
bind -M insert -m default jk backward-char force-repaint

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
#eval /home/chris/miniconda3/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<

