# Terminal settings
set -o vi

# Environment variables

## bin paths
export PATH="$HOME/bin:$PATH"
export PATH="/usr/local/opt/postgresql@9.5/bin:$PATH"
export NVM_DIR="$HOME/.nvm"
. "/usr/local/opt/nvm/nvm.sh"
# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

## Directories/Files
export CARTO_WORKSPACE="$HOME/Documents/workspace/carto"
export CW="$CARTO_WORKSPACE"
export BP="$HOME/.bash_profile"
export VRC="$HOME/.vimrc"


# Aliases

## General
alias ls='ls -G'
alias la='ls -a'
alias ll='ls -l'
alias lla='ls -la'
alias rm='rm -i'
alias srcbp='. ~/.bash_profile'
alias diffp='diff -Naur'
alias vimbp='vim ~/.bash_profile'
alias vimr='vim -r'
alias vimrc='vim $VRC'
alias rc='echo $?'
alias psef='ps -ef | grep'

## Ruby on Rails
alias bx='bundle exec'
alias bxr='bundle exec rake'

## Carto
alias start_builder='cd $CARTO_WORKSPACE/cartoDB; bundle exec rails s -p 3000'
alias start_resque='cd $CARTO_WORKSPACE/cartoDB; bundle exec script/resque'
alias start_tiler='cd $CARTO_WORKSPACE/Windshaft-cartodb; node app.js development'
alias start_sql_api='cd $CARTO_WORKSPACE/CartoDB-SQL-API; node app.js development'
alias start_redis='redis-server'
alias start_postgres='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start'
alias stop_postgres='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log stop'

# Uncategorized
