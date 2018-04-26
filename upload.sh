rm -rf cookbooks
cp -r ~/chef/* .
find cookbooks -name ".git" -type d | xargs rm -rf 
Git

