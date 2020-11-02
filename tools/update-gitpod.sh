#!/bin/bash

file_name=".gitpod.Dockerfile"
new_ver=$(npm view @abtnode/cli version)

repos=(
  wallet-playground
  Elixir-Phoenix-Demo
  react-demo
  zero-demo
  uniswap-deployer
  express-demo
  nextjs-demo
  minimalist-html-demo
  html-2048-sample
  gatsby-demo
  vue-vite-demo
  meteor-demo
)
for repo_name in "${repos[@]}"; do
  echo "------- begin ${repo_name} -------"
  # git clone git@github.com:blocklet/$repo_name.git
  git clone https://$GITHUB_TOKEN@github.com/blocklet/$repo_name.git
  cd $repo_name
  cur_ver=$(cat .gitpod.Dockerfile | grep '@abtnode/cli' |  awk -F '@abtnode/cli@' '{print $2}')
  echo "cur_ver: ${cur_ver}"
  echo "latest_version: ${new_ver}"
  cat $file_name | sed "s/$cur_ver/$new_ver/g" > $file_name.tmp
  mv $file_name.tmp $file_name
  rm $file_name.tmp
  git diff
  git add $file_name
  git commit -m '[skip travis] Update gitpod'
  git push
  cd ..
  rm -rf $repo_name
  echo "------- end ${repo_name} -------"
  echo ''
done