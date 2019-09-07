# clean local branches merged into develop
git branch -vv | grep 'origin/.*: gone]' | awk '{print $1}' | xargs git branch -D