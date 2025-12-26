source "$HOME/.aliases/git"
source "$HOME/.aliases/code"


##
## Edit Config
##########################
alias zshconfig="nvim $HOME/.zshrc"
alias ohmyzsh="nvim $HOME/.oh-my-zsh"
alias pconfig="nvim $HOME/.profile"
alias gconfig="nvim $HOME/.gitconfig"
alias galias="nvim $HOME/.gitconfig"
alias reload="source $HOME/.zshrc && source $HOME/.profile"
alias tconfig="nvim $HOME/.tmux.conf"
alias aconfig="nvim $HOME/.config/alacritty/alacritty.toml"
alias zelconfig="nvim $HOME/.config/zellij/config.kdl"
alias sshconfig="nvim $HOME/.ssh/config"
alias hconfig="nvim $HOME/.config/hypr/hyprland.conf"
alias hbconfig="nvim $HOME/.config/hypr/hypr_bind.conf"
alias hiconfig="nvim $HOME/.config/hypr/hypr_init.conf"
alias wconfig="nvim  $HOME/.config/waybar/config.jsonc"
##
## Sysfarm
######################
alias sys-upgrade="ssh sysfarm 'sh /opt/docker/run-upgrade.sh'"
alias sys-rc="ssh sysfarm 'cd /opt/docker && docker exec -it docker-rails-1 rails c'"
alias sys-deploy-prod='gh workflow run "Deploy to AWS ECS" --ref main'
alias sys-build="gh workflow run \"Build and Push Docker Image to ECR\" --ref develop"
alias sys-build-curr="gh workflow run .github/workflows/ci.yml --ref '\$(git rev-parse --abbrev-ref HEAD)'"
##
## Other
#####################
alias mktar='tar -acf '
alias untar='tar -zxvf '
alias cpd="pwd | pbcopy"

alias vi="nvim"

alias ls="eza"
alias ll="ls -l"
alias lla="ls -la"
alias la="ls -a"
alias lg="ls -a| grep "
alias lt="tree -l 2"
alias lt2="tree -l 3"
alias lt3="tree -l 4"
alias lt4="tree -l 5"

alias top="btop"

export GDK_SCALE=1
export GDK_DPI_SCALE=1
