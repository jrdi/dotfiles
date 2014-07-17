ln -s ~/Code/dotfiles/bash/main.sh ~/.bash_profile
ln -s ~/Code/dotfiles/gitconfig ~/.gitconfig

open ~/Code/dotfiles/resources/Jordi.terminal
sleep 1 # Wait a bit to make sure the theme is loaded
defaults write com.apple.terminal 'Default Window Settings' -string 'paulmillr'
defaults write com.apple.terminal 'Startup Window Settings' -string 'paulmillr'

. ~/.bash_profile