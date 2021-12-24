#######################################
###                                 ###
###          CONFIGURATION          ###
###                                 ###
#######################################

#set pokemon (random 1 1 386 )
#curl -s "https://raw.githubusercontent.com/shinya/pokemon-terminal-art/main/256color/bw/"$pokemon".txt"



## Set values
set fish_greeting # Hide welcome message
set VIRTUAL_ENV_DISABLE_PROMPT "1"
set -x MANPAGER "sh -c 'col -bx | bat -l man -p'"
# Set settings for https://github.com/franciscolourenco/done
set -U __done_min_cmd_duration 10000
set -U __done_notification_urgency_level low
## Environment setup
# Apply .profile: use this to put fish compatible .profile stuff in
# !! Isn't working for Aliases or Functions, only Export
if test -f ~/.fish_profile
  source ~/.fish_profile
end

bass source ~/.profile # bass is a plugin to exec bash commands in fish
source ~/.fish_theme
source ~/.react_boilerplate.fish
# Add ~/.local/bin to PATH
if test -d ~/.local/bin
    if not contains -- ~/.local/bin $PATH
        set -p PATH ~/.local/bin
    end
end
# Add depot_tools to PATH
if test -d ~/Applications/depot_tools
    if not contains -- ~/Applications/depot_tools $PATH
        set -p PATH ~/Applications/depot_tools
    end
end

#######################################
###                                 ###
###            FUNCTIONS            ###
###                                 ###
#######################################

## Run a command when launching fish
#if status --is-interactive
#   echo "Welcome to Fish !"
#end

# Fish command history
function history
    builtin history --show-time='%F %T '
end


function backup --argument filename
    cp $filename $filename.bak
end

# Copy DIR1 DIR2
function copy
    set count (count $argv | tr -d \n)
    if test "$count" = 2; and test -d "$argv[1]"
	set from (echo $argv[1] | trim-right /)
	set to (echo $argv[2])
        command cp -r $from $to
    else
        command cp $argv
    end
end


rvm default

