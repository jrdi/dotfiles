ln -sf ~/Code/dotfiles/bash/main.symlink ~/.bash_profile
ln -sf ~/Code/dotfiles/gitconfig.symlink ~/.gitconfig

# Only use UTF-8 in Terminal.app
defaults write com.apple.terminal StringEncodings -array 4

# Use a modified version of the Solarized Dark theme by default in Terminal.app
TERM_PROFILE='Jordi';
CURRENT_PROFILE="$(defaults read com.apple.Terminal 'Default Window Settings')";
if [ "${CURRENT_PROFILE}" != "${TERM_PROFILE}" ]; then
  open "resources/${TERM_PROFILE}.terminal";
  sleep 1; # Wait a bit to make sure the theme is loaded
  defaults write com.apple.Terminal 'Default Window Settings' -string "${TERM_PROFILE}";
  defaults write com.apple.Terminal 'Startup Window Settings' -string "${TERM_PROFILE}";
  defaults import com.apple.Terminal "$HOME/Library/Preferences/com.apple.Terminal.plist"
fi;

. ~/.bash_profile

for app in "Terminal"; do
  killall "${app}" > /dev/null 2>&1
done
echo "Done. Note that some of these changes require a logout/restart to take effect."
