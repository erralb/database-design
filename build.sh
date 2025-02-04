# Commands to build extension and publish it to market place
# npm install -g @vscode/vsce
rm packages/*.vsix
vsce package
cp *.vsix packages/
vsce publish
rm *.vsix
git add .
git commit -m "New version"
git push