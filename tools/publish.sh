echo who
whoami
# sudo su
# whoami

echo "node version"
node -v
echo ""¸
sudo npm install -g @octokit/core

echo "gem"
type gem
# sudo gem install travis
# type travis
# echo ""¸

# echo 'install @abtnode/cli'
# type npm
# npm bin -g
# sudo npm install -g @abtnode/cli

# echo abtnode version
# echo $PATH
# abtnode -V

# node tools/node.js

git config --local user.name "linchen1987"
git config --local user.email "linchen.1987@foxmail.com"
DATE=`date`
echo $DATE
git branch -a
echo $DATE >> testcommit
git add .
git status
git commit -m '[skip ci] test auto commit'
git push origin main
echo "done"
