export AMD_VULKAN_ICD=RADV
export EDITOR=/usr/bin/micro
export GTK2_RC_FILES="$HOME/.gtkrc-2.0"
export TERM=xterm
export VISUAL=kate

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
#export PATH="$PATH:$HOME/.rvm/bin"

#[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*



#######################################
###                                 ###
###            PACKAGES             ###
###                                 ###
#######################################

alias grubup="sudo update-grub"
alias upd='/usr/bin/update'
alias wget='wget -c '
alias fixpacman="sudo rm /var/lib/pacman/db.lck"
alias rmpkg="sudo pacman -Rdd"
# Cleanup orphaned packages
alias cleanup='sudo pacman -Rns (pacman -Qtdq)'
# List amount of -git packages
alias gitpkg='pacman -Q | grep -i "\-git" | wc -l'			
# Recent installed packages
alias rip="expac --timefmt='%Y-%m-%d %T' '%l\t%n %v' | sort | tail -200 | nl"
# Sort installed packages according to size in MB (expac must be installed)
alias big="expac -H M '%m\t%n' | sort -h | nl"              
alias apti="sudo apt-get install"
alias aptr="sudo apt-get remove"

# Get fastest mirrors for pacman
alias mirror="sudo reflector -f 30 -l 30 --number 10 --verbose --save /etc/pacman.d/mirrorlist" 
alias mirrord="sudo reflector --latest 50 --number 20 --sort delay --save /etc/pacman.d/mirrorlist" 
alias mirrors="sudo reflector --latest 50 --number 20 --sort score --save /etc/pacman.d/mirrorlist" 
alias mirrora="sudo reflector --latest 50 --number 20 --sort age --save /etc/pacman.d/mirrorlist" 

#######################################
###                                 ###
###           CONFIG FILES          ###
###                                 ###
#######################################

alias fconfig="micro ~/.config/fish/config.fish"
alias mconfig="micro ~/.config/micro/settings.json"
alias mbconfig="micro ~/.config/micro/binding.json"
alias zconfig="micro ~/.zshrc"
alias bconfig="micro ~/.bashrc"
alias aconfig="micro ~/.config/alacritty/alacritty.yml"
alias pconfig="micro ~/.profile"
alias starconfig="micro ~/.config/starship.toml"
alias rconfig=" micro ~/.react_boilerplate.fish"

# Reaload the configuration file of fish
alias reload="source ~/.config/fish/config.fish"

#######################################
###                                 ###
###           UTILITARIES           ###
###                                 ###
#######################################

alias mktar='tar -acf '
alias untar='tar -zxvf '
# Hardware Info
alias hw='hwinfo --short'                                   
# Get the error messages from journalctl
alias jctl="journalctl -p 3 -xb"
alias bat='bat --style header --style rules --style snip --style changes --style header'
# useless if not on arch
[ ! -x /usr/bin/yay ] && [ -x /usr/bin/paru ] && alias yay='paru'

alias k="colorls --tree=2"
alias kk="colorls --tree=3"
alias kkk="colorls --tree=4"
alias kkkk="colorls --tree=5"
alias ka="colorls -a --tree=2"
alias kka="colorls -a --tree=3"
alias kkka="colorls -a --tree=4"
alias kkkka="colorls -a --tree=5"
alias kall="colorls -a --tree"

alias dir='dir --color=auto'
alias vdir='vdir --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias vi="vim"
alias mic="micro"

#######################################
###                                 ###
###         CHANGE DIRECTORY        ###
###                                 ###
#######################################

#alias ..='cd ..'
#alias ...='cd ../..'
#alias ....='cd ../../..'
alias go="cd /home/sonfaya/Dev/thp/project/social-network-react-redux"
alias tmp="cd ~/Tmp"
alias dev="cd ~/Dev"
alias doc="cd ~/Documents"
alias thp="cd ~/Dev/thp"
alias asto="cd ~/Dev/asto"
alias project="cd ~/Dev/project"
alias rawg="cd ~/Dev/project/rawg-like"
#copy current directory path
# -selection clipboard    copy it to the standar clipboard
# if removed use    clip -o    to output it
alias cpd="pwd | xclip -selection clipboard" 
alias clip="xclip -selection clipboard"
alias back="cd /home/sonfaya/Dev/thp/THP_FINAL/back"
alias front="cd /home/sonfaya/Dev/thp/THP_FINAL/front"


#######################################
###                                 ###
###           GIT COMMAND           ###
###                                 ###
#######################################

alias gaa="git add -A"
alias gc="git commit -m "
alias gpush="git push origin main"
alias gpull="git pull origin main"
alias gco="git checkout"
alias gmp="git checkout main && git pull origin main"
alias master="git checkout main"
alias merge="git merge"

#######################################
###                                 ###
###              HEROKU             ###
###                                 ###
#######################################

alias hpush="git push heroku main"
alias hopen="heroku open"
alias hrun="heroku run"
alias hrails="heroku run rails"
alias hdb="heroku run rails db:"
alias hdbm="heroku run rails db:migrate"
alias hdbms="heroku run rails db:migrate:status"

# switch between remtoe and prod heroku
alias hstag="git remote remove heroku && git remote add heroku https://git.heroku.com/playbox-thp-staging.git"
alias hprod="git remote remove heroku && git remote add heroku https://git.heroku.com/playbox-thp.git"
alias backstag='git remote remove heroku && git remote add heroku https://git.heroku.com/playbox-info-staging.git'
alias backprod='git remote remove heroku && git remote add heroku https://git.heroku.com/playbox-info.git '

#######################################
###                                 ###
###          NPM & NODEJS           ###
###                                 ###
#######################################

alias mkreact="npx create-react-app "
alias jsconfig="cp ~/Dev/src/jsconfig.json ."
alias getmaterial="npm i @mui/material @emotion/styled @emotion/react @mui/icons-material @mui/lab && echo 'loaded @mui => material , lab, icons-material || @emotion => styled , react'"
alias getredux="npm i redux react-redux redux-thunk"
alias yarn-boiler="yarn add @mui/material @emotion/styled @emotion/react @mui/icons-material @mui/lab react-router-dom sass axios js-cookie react-redux redux-thunk"
alias npm-boiler="npm i @mui/material @emotion/styled @emotion/react @mui/icons-material @mui/lab react-router-dom sass axios js-cookie react-redux redux-thunk"
alias muipkg="echo @mui/material @emotion/styled @emotion/react @mui/icons-material @mui/lab"
alias nps="BROWSER=none npm start"
alias yarns="BROWSER=none yarn start"

#######################################
###                                 ###
###               RAILS             ###
###                                 ###
#######################################
alias rnew="rails new -d postgresql"
alias rc="rails console"
alias rs="rails server"
alias bi="bundle install"
alias migrate="rails db:migrate"
alias dbstatus="rails db:migrate:status"
alias seed="rails db:seed"
alias rdbfull="rails db:drop db:create db:migrate db:seed"
alias rdbdown="rails db:migrate VERSION=0"

alias setvm="rvm use 2.7.4 && nvm use 14"


############## CLOUDINARY  ######################

alias setcloud="export CLOUDINARY_URL=cloudinary://434818121429284:3l4a5ZE83eLmkKXuqhkQM8wTvuY@thefinalproject"
