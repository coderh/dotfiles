[ -n "$PS1" ] && source ~/.bash_profile;

# Packer
export PATH=~/lib/packer/:$PATH

# Java
export JAVA_HOME=/usr/lib/jvm/java-8-oracle/

# Golang
export GOPATH=~/workspace/go/
export PATH=$PATH:/usr/local/go/bin
export GOREPO=~/workspace/go/src/github.com/invkrh/

# Scala
export SCALA_HOME=~/lib/scala-2.11.6/
export PATH=$SCALA_HOME/bin:$PATH

# Git shortcuts
alias gs="git status"
alias gd="git diff"
alias ga="git add"

# active nvm
[[ -s "$HOME/.nvm/nvm.sh" ]] && source "$HOME/.nvm/nvm.sh" # Load nvm into a shell session *as a function*

# active rvm
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# rotate second screen
xrandr --output HDMI2 --rotate left
