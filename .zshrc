# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="robbyrussell"
#ZSH_THEME="powerline"
ZSH_THEME="rootsmith"
#ZSH_THEME="agnoster"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want disable red dots displayed while waiting for completion
# DISABLE_COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...

# powerline prompt
#function _update_ps1()
#{
#    export PROMPT="$(~/bin/powerline-zsh.py $?)"
#}
#precmd()
#{
#    _update_ps1
#}


# Use vim key bindings
bindkey -v

# bash-completion is broken under zsh and is it necessary???
#source /usr/local/Cellar/bash-completion/1.3/etc/bash_completion
#
alias roam='cd ~/Documents/source_code/roammobility'
alias ops='cd ~/Documents/source_code/roammobility/operations; source venv/bin/activate'
alias prov='cd ~/Documents/source_code/roammobility/provisioning; source venv/bin/activate'

alias ggui='git log --graph --full-history --all --color --pretty=format:"%x1b[31m%h%x09%x1b[32m%d%x1b[0m%x20%s"'

export PATH=./venv/bin:/usr/local/bin:/usr/local/sbin:/usr/local/share/python:/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin:/Applications/Xcode.app/Contents/Developer/usr/bin:"${PATH}"

# set PATH so it includes user's private bin if it exists
if [ -d ~/bin ] ; then
    export PATH=~/bin:"${PATH}"
fi

# include mysql bin in PATH on Mac OS X
#if [ -d /usr/local/mysql/bin ] ; then
#    PATH="${PATH}":/usr/local/mysql/bin
#fi

# JAVA CRAP
#export GRADLE_HOME=/usr/local/gradle

# Java 6
#export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Home
# Java 7
#export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_51.jdk/Contents/Home

#export CATALINA_HOME=/usr/local/grid_director/apache-tomcat-7.0.35

## BitStew bunk ##
##################
# Various grid director locations (per client)
#export GRID_DIRECTOR=/usr/local/grid_director

#export GD_SOURCE=$HOME/Documents/projects/bitstew/grid-director
#export SP_SOURCE=/usr/local/spa_griddirector

# Oracle bunk
#export DYLD_LIBRARY_PATH=$DYLD_LIBRARY_PATH:/usr/local/instantclient_10_2
#export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/instantclient_10_2
#export SQLPATH=/usr/local/instantclient_10_2
#export ORA_HOME=/usr/local/instantclient_10_2
#export TNS_ADMIN=$ORA_HOME/admin
#export ORACLE_SID=XE
#export PATH=$GRADLE_HOME/bin:$CATALINA_HOME/bin:$ORA_HOME/bin:$PATH
#export CVSROOT=:pserver:ad-kevinsmith@localhost:/Repository
#export CLOSURE_COMPILER=$HOME/bin/compiler.jar


