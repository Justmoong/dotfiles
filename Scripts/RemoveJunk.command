#! /bin/zsh
echo "Start Remove Junk"

rm -rf ~/.cache
rm -rf ~/.npm
rm -rf ~/.cargo
rm -rf ~/.gradle
rm -rf ~/.matplotlib
rm -rf ~/.python_history
rm -rf ~/.zsh_sessions
rm -rf ~/.lesshst
rm -rf ~/.node_repl_history
rm -rf ~/.zshrc.backup

docker system prune -af

rm -rf ~/.DS_Store

brew cleanup
brew update
brew upgrade
brew cleanup
echo "Brew Check Complete at $(date)." >> ~/checkbrew.log

cd .dotfiles/
echo "start sync .dotfiles on git"
sudo git add .
sudo git commit -m "Fixed at: $(date '+%Y-%m-%d %H:%M:%S')"
sudo git push
echo "Fixed at: $(date '+%Y-%m-%d %H:%M:%S')"
echo "Done"
cd

wait 5
osascript -e 'tell application "iTerm2" to tell current window to close'