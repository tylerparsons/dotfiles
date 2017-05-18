# Terminal settings
set -o vi

# Environment variables

## bin paths
export PATH="$HOME/bin:$PATH"
export NVM_DIR="$HOME/.nvm"
[[ -s "/usr/local/opt/nvm/nvm.sh" ]] && . "/usr/local/opt/nvm/nvm.sh"
# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

## Directories/Files
export WORKSPACE="$HOME/dev"
export WS="$WORKSPACE"
export CARTO_WORKSPACE="$WORKSPACE/carto"
export CW="$CARTO_WORKSPACE"
export BP="$HOME/.bash_profile"
export VRC="$HOME/.vimrc"


# OS Specific settings

case "$OSTYPE" in
  darwin*)
    # Mac OS X
    alias ls='ls -G'
    export PATH="/usr/local/opt/postgresql@9.5/bin:$PATH"
    ;;
  linux*)
    alias ls='ls --color'
    ;;
  *)
    ;;
esac

# Aliases

## General
alias la='ls -a'
alias ll='ls -l'
alias lla='ls -la'
alias rm='rm -i'
alias srcbp='. ~/.bash_profile'
alias diffp='diff -Naur'
alias vimbp='vim ~/.bash_profile'
alias vimr='vim -r'
alias vimrc='vim $VRC'
alias vimgc='vim ~/.gitconfig'
alias rc='echo $?'
alias psef='ps -ef | grep'
alias gs='git status'
alias intdatetime='date -j -f "%a %b %d %T %Z %Y" "`date`" "+%Y%m%d%H%M%S"'
alias intdate='date -j -f "%a %b %d %T %Z %Y" "`date`" "+%Y%m%d"'

## Ruby on Rails
alias bx='bundle exec'
alias bxr='bundle exec rake'

## Carto
alias start_builder='sudo cd $CARTO_WORKSPACE/cartoDB && sudo bundle exec rails s -p 3000'
alias start_resque='sudo cd $CARTO_WORKSPACE/cartoDB && sudo bundle exec script/resque'
alias start_tiler='sudo cd $CARTO_WORKSPACE/Windshaft-cartodb && sudo node app.js development'
alias start_sql_api='sudo cd $CARTO_WORKSPACE/CartoDB-SQL-API && sudo node app.js development'
alias start_redis='sudo redis-server'
alias stop_redis='sudo redis-cli shutdown'
alias start_postgres='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start'
alias stop_postgres='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log stop'

# Uncategorized
