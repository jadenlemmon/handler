#!/bin/sh

# Print usage
usage() {
  echo "hc [CMD] [ARGS]

 Handy Commands

 Commands:
 cm                 Clears all local branches merged into checkout out branch
 u                  Updates current branch in repo from origin and installs dependencies
 dk                 Kills all running docker containers
 drs                Removes all stopped docker containers
 ddi                Removes all dangling docker images
"
}

for arg in "$@"
do
    if [ "$arg" == "--help" ] || [ "$arg" == "-h" ]
    then
        usage
        exit
    fi
done

check_for_git () {
  if [ ! -d .git ]; then
    echo 'Command can only be used in a GIT repository.'
    exit
  fi;
  BRANCH=$(git symbolic-ref --short HEAD)
}

if [ "$1" == "cm" ]; then
  check_for_git
  git fetch -p && git branch -vv | awk '/: gone]/{print $1}' | xargs git branch -D
  echo "Cleared local branches merged into $BRANCH"
elif [ "$1" == "u" ]; then
  check_for_git
  # update repo
  git pull
  
  # install js dependencies
  test -e ./yarn.lock && yarn || npm i
  
  # install php dependencies
  test -e ./composer.json && composer install
elif [ "$1" == "dk" ]; then
  # kill all running docker containers
  docker kill $(docker ps -q)
elif [ "$1" == "ddi" ]; then
  # remove dangling images
  docker rmi $(docker images -q -f dangling=true)
elif [ "$1" == "drs" ]; then
  # remove stoped docker containers
  docker rm $(docker ps -a -q)
else
  echo "Must provide a command see --help for a list of commands"
fi