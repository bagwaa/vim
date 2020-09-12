# if [ -z "$TMUX" ]
# then
#     tmux attach -t TMUX || tmux new -s TMUX
# fi

# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH:$HOME/.composer/vendor/bin

# Go
#
# the first gopath is where all the third party code will be installed, go takes this as the FIRST go path
# so it will install everything it needs here.
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
# We are also able to add an additional go path, this one won't be used for third party packages but we will
# be looking at it for our own compiled applications, which makes things much cleaner
# See https://youtu.be/YS4e4q9oBaU?t=1450 for further details
export GOPATH=$GOPATH:$HOME/Code/Go

# Colours
export TERM="xterm-256color"

# Path to your oh-my-zsh installation.
export ZSH="/Users/bagwaa/.oh-my-zsh"

# Z.SH Setup
. /usr/local/bin/z.sh

export VISUAL=vim
export EDITOR="$VISUAL"

# POWERLEVEL9K THEME SETTINGS
POWERLEVEL9K_MODE='nerdfont-complete'
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status time)
POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR=$''
POWERLEVEL9K_RIGHT_SEGMENT_SEPARATOR=$''
POWERLEVEL9K_COLOR_SCHEME="dark"
POWERLEVEL9K_DIR_HOME_BACKGROUND='yellow'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND='cyan'
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND='yellow'
POWERLEVEL9K_STATUS_OK_BACKGROUND='green'
POWERLEVEL9K_STATUS_OK_FOREGROUND='black'

# `vcs` color customization
POWERLEVEL9K_VCS_MODIFIED_FOREGROUND='white'
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='red'
POWERLEVEL9K_VCS_CLEAN_BACKGROUND='076'
POWERLEVEL9K_VCS_CLEAN_FOREGROUND='black'
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='red'
POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND='white'


# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"
alias sshkey="cat ~/.ssh/id_rsa.pub | pbcopy && echo 'copied'"
alias nah="git reset --hard;git clean -df;"
alias pa="php artisan"
alias art="php artisan"
alias artisan="php artisan"
alias gs="git status"
alias gitlog="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias gl="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias t="phpunit-watcher watch"
alias vim="nvim"
alias vimclean="vim -u NONE"
alias python=/usr/local/bin/python3
alias pip=/usr/local/bin/pip3

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

source /usr/local/opt/powerlevel9k/powerlevel9k.zsh-theme
export PATH="/usr/local/opt/valet-php@7.4/bin:$PATH"
export PATH="/usr/local/opt/valet-php@7.4/sbin:$PATH"
export PATH="/usr/local/sbin:$PATH"
