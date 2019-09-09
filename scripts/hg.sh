#!/bin/sh

# Print usage
usage() {
  echo "hg [CMD] [ARGS]

 Git util commands

 Commands:
 cm                 Clears all local branches merged into checkout out branch
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
else
    echo "Must provide a command see --help for a list of commands"
fi