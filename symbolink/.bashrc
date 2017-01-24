[ -n "$PS1" ] && source ~/.bash_profile;

# Git auto completion
source ~/bin/git-completion.bash
source ~/bin/load-aws-keys.sh

# AWS KEY
# source ~/load-aws-keys.sh

# Project repo dirs
export DATA_OPS_REPO=~/workspace/ops/data_ops
export DATA_ENG_REPO=~/workspace/lbc-data-engineering
export CONFUCIUS_REPO=$DATA_ENG_REPO/lbc_confucius_reborn

# Airflow
export AIRFLOW_HOME=~/lib/airflow

# Confluent
export CONFLUENT_HOME=~/lib/confluent-2.0.0

# ElasticSearch
export ELASTIC_HOME=~/lib/elasticsearch-1.7.5

# Packer
# export PATH=~/lib/packer/:$PATH
# export PYTHONPATH=~/workspace/java/data_brutus/scheduling/modules/:$PYTHONPATH

# Java
export JAVA_HOME=/usr/lib/jvm/java-8-oracle
export SCALA_HOME=~/lib/scala-2.11.8
export PATH=~/lib/scala-2.11.8/bin:$PATH

# Maven
export PATH=~/lib/apache-maven-3.3.9/bin:$PATH

# Home bin path
export PATH=~/bin:$PATH

# Golang
export GOPATH=~/workspace/go
export PATH=$PATH:/usr/local/go/bin
export GOREPO=~/workspace/go/src/github.com/invkrh

# Scala
export SCALA_HOME=~/lib/scala-2.11.6
export PATH=$SCALA_HOME/bin:$PATH

# Git shortcuts
alias gs="git status"
alias gd="git diff"
alias ga="git add"
alias gc="git checkout"

# active nvm
[[ -s "$HOME/.nvm/nvm.sh" ]] && source "$HOME/.nvm/nvm.sh" # Load nvm into a shell session *as a function*

# active rvm
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# rotate second screen
xrandr --output HDMI1 --primary
xrandr --output HDMI2 --rotate left

# use python2
export PATH="/home/invkrh/lib/anaconda3/envs/py27/bin:$PATH"

# added by Anaconda3 4.1.1 installer
# export PATH="/home/invkrh/lib/anaconda3/bin:$PATH"
