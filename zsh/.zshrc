# Ifpick you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

. `brew --prefix`/etc/profile.d/z.sh
# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

export PATH="$PATH:/Users/dawidof/.rvm/gems/ruby-2.3.1/bin:/Users/dawidof/.rvm/gems/ruby-2.3.1@global/bin:/Users/dawidof/.rvm/rubies/ruby-2.3.1/bin:/Users/dawidof/.rvm/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin"
# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#ZSH_THEME="robbyrussell"

#ZSH_THEME="mh"
ZSH_THEME="agnoster"

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
HIST_STAMPS="dd.mm.yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(autojump battery brew bundler cask catimg codeclimate colorize common-aliases emacs encode64 extract git github gitignore heroku history history-substring-search httpie iwhois jsontools npm nvp osx rails reminder rsync ruby thefuck theme yarn z zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh


ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor line root)
ZSH_HIGHLIGHT_PATTERNS=('rm -rf *' 'fg=white,bold,bg=red')


export HISTSIZE=32768;
export HISTFILESIZE=$HISTSIZE;
export HISTCONTROL=ignoredups;
export HISTIGNORE="ls:cd:cd -:pwd:exit:date:* --help";

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8


export EDITOR='vim'
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

unsetopt correctall

DEFAULT_USER='dawidof'


alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"

alias qfind="find . -name "
alias ll='ls -l'
alias myip='curl icanhazip.com'

alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="ifconfig en0 inet | grep 'inet ' | awk ' { print $2 } '"
alias ips="ifconfig -a | perl -nle'/(\d+\.\d+\.\d+\.\d+)/ && print $1'"
alias ports='sudo lsof -iTCP -sTCP:LISTEN -P'


alias pstop='launchctl unload ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist'
alias pstart='launchctl load ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist'
alias post='postgres -D /usr/local/var/postgres'

alias vi="/usr/local/Cellar/vim/8.0.0150/bin/vim"
alias vim="/usr/local/Cellar/vim/8.0.0150/bin/vim"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

alias mig='spring rake db:migrate'
alias roll='spring rake db:rollback'

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

alias r='bin/rake'

alias sudo='sudo '
alias edit_hosts='edit /etc/hosts'
alias poweroff='sudo /sbin/shutdown -h now'


export DOCKER_HOST=tcp://10.211.55.4:2376
export DOCKER_CERT_PATH=/Users/dawidof/.docker/machine/machines/dinghy
export DOCKER_TLS_VERIFY=1
export DOCKER_MACHINE_NAME=dinghy
alias db="docker-compose run app bash"

alias ds="docker-compose up"



alias p="vim ~/.zshrc"
alias pp='vi ~/.profile'
alias ppp='vi ~/.bash_profile'



alias c="ccat $*"

alias holidays="gcal --holiday-list=short --cc-holiday=PL"
alias cal='gcal --starting-day=1'

#stty sane


## Folders

alias ng='/Volumes/MacDATA/Sites/ngrok http 3000'
alias copy='cd "/Volumes/MacDATA/Copy"'
alias s='cd /Volumes/MacDATA/Sites'
alias v='cd /Volumes/MacDATA/vagrant'


source ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"
