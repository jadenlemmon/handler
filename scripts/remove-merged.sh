# remove local branches merged into current branch
git fetch -p && git branch -vv | awk '/: gone]/{print $1}' | xargs git branch -D