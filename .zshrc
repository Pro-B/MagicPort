# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/home/projit-normal/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git fasd zsh-autosuggestions zsh-syntax-highlighting)

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

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias zshconfig="mate ~/.zshrc"
alias ohmyzsh="mate ~/.oh-my-zsh"
alias c=clear
alias cc='tput reset'
alias l='ls'
alias e=emacs
alias cl='tput reset; ls'
alias lc='tput reset; ls'
alias op='xdg-open'
alias py='python3'
alias g++='g++ --std=c++14'

function proxy_on {
#printf -v no_proxy '%s,' 10.1.{1..255}.{1..255}
export http_proxy="http://proxy.iiit.ac.in:8080"
export https_proxy=$http_proxy
export ftp_proxy=$http_proxy
export no_proxy="localhost,127.0.0.1,iiit.ac.in,"
export rsync_proxy=$http_proxy

export HTTP_PROXY=$http_proxy
export HTTPS_PROXY=$http_proxy
export FTP_PROXY=$http_proxy
export NO_PROXY=$no_proxy
export RSYNC_PROXY=$http_proxy
}

function proxy_off {
unset http_proxy https_proxy ftp_proxy no_proxy
unset HTTP_PROXY HTTPS_PROXY FTP_PROXY NO_PROXY
}

proxy_on # Run proxy_on by default.

export PATH=$PATH:/home/projit-normal/VMD
export PATH=$PATH:/home/projit-normal/VMD/bin
export PATH=$PATH:/home/projit-normal/VMD/lib
export PATH="$HOME/.rbenv/bin:$PATH"
export PATH=$PATH:/home/projit-normal/NodeJS/node-v6.9.4-linux-x64/bin
export BLUESPECDIR="/home/projit-normal/Bluespec/lib"
export BLUESPEC_HOME="/home/projit-normal/Bluespec/"
export LM_LICENSE_FILE=27000@10.4.21.49
export PATH=$PATH:${BLUESPEC_HOME}/bin
export PATH=$PATH:${BLUESPEC_HOME}/bin:${BLUESPEC_HOME}/util/flexlm/x86_64_re3
export PATH="/home/projit-normal/jdk1.8.0_131/bin:$PATH"
export NEO4J_HOME="/home/projit-normal/installations/neo4j-community-3.3.0"
export PATH=$PATH:${NEO4J_HOME}/bin
export PATH=$PATH:/home/projit-normal/installations/matlab_installation/R2017a/bin

eval "$(rbenv init -)"
export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"


###On Startup###
grep "TODO" ~/MyStuff/ToDoList.org

