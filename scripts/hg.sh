#!/bin/sh

# Print usage
usage() {
  echo "hg [CMD] [ARGS]

 Handy Git Commands

 Commands:
 cm                 Clears all local branches merged into checkout out branch
 u                  Updates current branch in repo from origin and installs dependencies
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

if [ ! -d .git ]; then
  echo 'HandyGit can only be used in a GIT repository.'
  exit
fi;

BRANCH=$(git symbolic-ref --short HEAD)

if [ "$1" == "cm" ]; then
    git fetch -p && git branch -vv | awk '/: gone]/{print $1}' | xargs git branch -D
    echo "Cleared local branches merged into $BRANCH"
elif [ "$1" == "u" ]; then
    # update repo
    git pull
    
    # install js dependencies
    test -e ./yarn.lock && yarn || npm i
    
    # install php dependencies
    test -e ./composer.json && composer install
else
    echo "Must provide a command see --help for a list of commands"
fi