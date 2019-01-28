cd /home/hw/code/persimmon
git checkout master
git merge dev
git push
cap production deploy
cap production puma:stop
cap production puma:start
