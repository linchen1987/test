echo "node version"
node -v
echo ""¸

echo "gem"
type gem
gem install travis
type travis
echo ""¸

echo 'install @abtnode/cli'
type npm
npm install -g @abtnode/cli

echo abtnode version
echo $PATH
abtnode -V