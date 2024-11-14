type -q zoxide
and abbr -g cd z

abbr -g nvim "nvim --listen /tmp/nvim-server-(tmux display-message -p '#S-#I-#P').pipe"
abbr -g :q exit
