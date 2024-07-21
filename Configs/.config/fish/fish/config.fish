##################################
# conf.d scripts run before this 
##################################

set -gx TERMINAL $TERM

##################################
# PATH setup
##################################

add_to_path /usr/lib/x86_64-linux-gnu/pkgconfig/ PKG_CONFIG_PATH
add_to_path /usr/local/lib/pkgconfig PKG_CONFIG_PATH
add_to_path /usr/lib/pkgconfig PKG_CONFIG_PATH
add_to_path "$HOME/.local/lib" LD_LIBRARY_PATH
add_to_path "$HOME/.local/libexec" LD_LIBRARY_PATH
fish_add_path ~/bin
fish_add_path ~/.local/bin
fish_add_path ~/.cargo/bin
fish_add_path ~/.local/share/coursier/bin
fish_add_path $FISH_CONFIG_DIR/conf.d/bin/
set -gx LUA_PATH "$HOME/.local/packages/luarocks/share/lua/5.4/?.lua;$HOME/.local/packages/luarocks/lib/lua/5.4/?.lua;;"

if status is-interactive
    # Commands to run in interactive sessions can go here
end

##################################
# functions / abbrs / settings
##################################

# profile editing helper functions
set -gx FISH_CONFIG_PATH (status filename)
set -gx FISH_CONFIG_DIR (status dirname)
abbr reload_profile "source $FISH_CONFIG_PATH"

source ~/.config/fish/abbr.fish

set -gx EDITOR nvim


##################################
# Run other configs
##################################
for file in $FISH_CONFIG_PATH.d/*.fish
    source $file
end

test -s /home/aaron/.nvm-fish/nvm.fish; and source /home/aaron/.nvm-fish/nvm.fish

test -d ~/dev/venv; and source ~/dev/venv/bin/activate.fish
