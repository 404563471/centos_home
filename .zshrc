# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH=/home/yhy/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="ys"

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
# COMPLETION_WAITING_DOTS="true"

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
plugins=(git colored-man-pages zsh_reload web-search last-working-dir catimg wd fast-syntax-highlighting sudo history-search-multi-word zsh-syntax-highlighting)


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
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

alias cls='clear' 
alias ll='ls -l' 
alias la='ls -a' 
alias vi='vim' 
alias javac="javac -J-Dfile.encoding=utf8" 
alias grep="grep --color=auto" 
alias -s html=mate # 在命令行直接输入后缀为 html 的文件名，会在 TextMate 中打开 
alias -s rb=mate # 在命令行直接输入 ruby 文件，会在 TextMate 中打开 
alias -s py=vi # 在命令行直接输入 python 文件，会用 vim 中打开，以下类似 
alias -s js=vi 
alias -s c=vi 
alias -s java=vi 
alias -s txt=vi 
alias -s gz='tar -xzvf' 
alias -s tgz='tar -xzvf' 
alias -s zip='unzip' 
alias -s bz2='tar -xjvf'

alias zshconfig='vi ~/.zshrc'
alias vimconfig='vi ~/.vimrc'
alias tmuxconfig='vi ~/.tmux.conf'

alias cat=ccat
alias install='sudo yum -y install'
alias search='yum search'
#alias install='sudo apt-get install'
#alias rm='cp $@ -t ~/backup && rm $@'# I dont know why I have to add -t to mean the target dir
#alias rm2='cp -r $@ -t ~/backup && rm $@'
[[ -s /home/yhy/.autojump/etc/profile.d/autojump.sh ]] && source /home/yhy/.autojump/etc/profile.d/autojump.sh
#export PATH="/home/yhy/anaconda3/bin:$PATH"

