ln -sf ~/Code/dotfiles/bash/main.symlink ~/.bash_profile
ln -sf ~/Code/dotfiles/gitconfig.symlink ~/.gitconfig

open ~/Code/dotfiles/resources/Jordi.terminal
sleep 1 # Wait a bit to make sure the theme is loaded
defaults write com.apple.terminal 'Default Window Settings' -string 'Jordi'
defaults write com.apple.terminal 'Startup Window Settings' -string 'Jordi'

. ~/.bash_profile
