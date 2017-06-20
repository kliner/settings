# Path to your oh-my-zsh installation.
export ZSH=/Users/kliner/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
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
# ENABLE_CORRECTION="true"

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
plugins=(git)

# User configuration

export PATH="/usr/local/opt/coreutils/libexec/gnubin:/Users/kliner/Downloads/apache-maven-3.3.9/bin:/Users/kliner/bin/gradle-2.6/bin:/Users/kliner/Library/Android/sdk/tools:/Users/kliner/Library/Android/sdk/platform-tools:/Users/kliner/Library/Android/sdk/tools/proguard/bin:/Users/kliner/Downloads/odps_clt_release_64/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

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
#
#PS1="\[$(tput bold)\]\n\[\033[1;37m\]\342\224\214[$(if [[ ${EUID} == 0 ]]; then echo '\[\033[01;31m\]\h'; else echo '\[$(tput setaf 1)\]\u\[$(tput setaf 7)\]@\[$(tput setaf 4)\]\h'; fi)\[\033[1;37m\]]\342\224\200(\$(if [[ \$? == 0 ]]; then echo \"\[\033[01;32m\]\342\234\223\"; else echo \"\[\033[01;31m\]\342\234\227\"; fi)\[\033[1;37m\])\342\224\200[\[$(tput setaf 6)\]\t \d\[\033[1;37m\]]\[\033[1;37m\]\n\342\224\224\342\224\200(\[\033[1;32m\]\W\[\033[1;37m\])\342\224\200> \[\033[0m\]"
#PS1=$'\e[0;30m[%D/\%\}/Y-%m-%d %H:%M:%S}] \e[0;31m%~ $ \e[0m'
PS1='[%t] ${ret_status} %{$fg[cyan]%}%c%{$reset_color%} $(git_prompt_info)'

export BIN_HOME=/Users/kliner/bin

export CATALINA_HOME='/Users/kliner/ali-tomcat/taobao-tomcat-7.0.68'
export JAVA_HOME=`/usr/libexec/java_home`  
export ANDROID_HOME=/Users/kliner/Library/Android/sdk
export BTRACE_HOME=$BIN_HOME/btrace-bin-1.3.8.3

export PATH=$BTRACE_HOME/bin:$BIN_HOME/apache-maven-3.3.9/bin:$BIN_HOME/gradle-2.6/bin:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools:$ANDROID_HOME/tools/proguard/bin:$BIN_HOME/odps_clt_release_64/bin:$BIN_HOME:$PATH
export PYTHONPATH=/Users/kliner/workspace/tool:$PYTHONPATH:

alias ll='ls -l'
alias vi='mvim'
alias vim='mvim'
alias tailf='tail -f'
alias mvcll='mvn clean install -Dmaven.test.skip'
alias mvdp='mvn deploy -Dmaven.test.skip'
alias mvndt='mvn dependency:tree'
alias sshcm8='ssh kliner.lk@login1.su18.alibaba.org'
alias sshl='ssh kliner.lk@login1.su18.alibaba.org'
alias grepLog='adb logcat | grep HttpInv | tee'
if brew list | grep coreutils > /dev/null ; then
  PATH="$(brew --prefix coreutils)/libexec/gnubin:$PATH"
  alias ls='ls -F --show-control-chars --color=auto'
  #eval `gdircolors -b $HOME/.dir_colors`
fi

bindkey -e # emacs

#source /Applications/Xcode.app/Contents/Developer/usr/share/git-core/git-completion.bash


PATH="/Users/kliner/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/Users/kliner/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/Users/kliner/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/Users/kliner/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/Users/kliner/perl5"; export PERL_MM_OPT;
