# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/home/hren/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="avit"

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
plugins=(git github brewi scala sbt)

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
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# ENV VAR
export HOME_LIB="$HOME/lib"
export WORKSPACE="$HOME/workspace"
export M2_HOME="/opt/apache-maven-3.5.0"
export JMOAB_HOME="$WORKSPACE/jmoab"
export PATH=$M2_HOME/bin:$PATH
export IP=`hostname -I | cut -d' ' -f1`

# Criteo Spark
export HADOOP_VERSION="2.6"
export SPARK_VERSION="2.1.1"
export SPARK_HOME="$HOME_LIB/spark-$SPARK_VERSION-bin-hadoop$HADOOP_VERSION"
# export SPARK_HOME="$HOME_LIB/spark-2.1.1-criteo-20170822141130-bin-2.10-2.6.0-cdh5.5.0"
# export HIVE_HOME="$HOME_LIB/hive"
export HIVE_HOME=""
export SPARK_LOCAL_IP="$IP"
# export SPARK_SUBMIT_OPTS="-Djava.security.krb5.conf=/etc/krb5.conf" # Required to authenticate on the gateway
export HADOOP_CONF_DIR="/etc/hadoop/conf"

# Criteo Zeppelin 
export ZEPPELIN_VERSION="0.7.1"
export ZEPPELIN_HOME="$HOME_LIB/zeppelin-$ZEPPELIN_VERSION-bin-all"
export SPARK_SUBMIT_OPTIONS="--driver-memory 8g --jars $HOME_LIB/lzo/lzo-hadoop-1.0.5.jar" # This is required to read LZO compressed files from HDFS

# added by Anaconda3 4.4.0 installer
export PATH="$HOME/lib/anaconda3/bin:$PATH"

# bslib home
export BSLIB_HOME="/home/hren/workspace/scala/bslib"

# Alias
alias gs="git status"
alias build="mvn install -DpackageForDeploy -DskipTests"
alias deploy="bash $JMOAB_HOME/software-factory/hadoop-deployer/deployer.sh"
alias zd=$ZEPPELIN_HOME/bin/zeppelin-daemon.sh
alias ipaddr="echo $IP"
alias scala="amm"
alias zd-clean-restart="zd stop && rm -rf derby.log metastore_db && kdestroy -A && kinit -l 7d -f h.ren@CRITEOIS.LAN && zd start"
alias k="kill -9"

# functions
function nb-info {
	notebook_id=$1
  cat	$HOME/workspace/notebook/zeppelin/bidding-notebooks/$notebook_id/note.json | grep "$notebook_id" -B 1
}

# Prompt
NEWLINE=$'\n'
function precmd {
    PROMPT="${NEWLINE}%F{yellow}[%D{%H:%M:%S}]%f $(_user_host)${_current_dir} $(git_prompt_info)
%{$fg[$CARETCOLOR]%}$ %{$resetcolor%}"
}
