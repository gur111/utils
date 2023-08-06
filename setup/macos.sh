USERNAME=gtelem

echo "Copying scripts from /SWE"
sudo mkdir -p /AppleInternal/Applications/Scripts/
kinit $USERNAME@OD.APPLE.COM
sudo chown -R $USERNAME /AppleInternal/Applications/Scripts/
rsync  -a /SWE/CoreOS/Tools/ops/  /AppleInternal/Applications/Scripts/

echo "Allowing to debug and codesign stuff from xcode"
sudo defaults write /Library/Preferences/com.apple.security.coderequirements Entitlements -string always
sudo launchctl kickstart -kp system/com.apple.MobileFileIntegrity

echo "Settings some 'defaults'"
# Disable "smart" quotes/dashes
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false
defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false
# Key repeat enable
defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false
defaults write NSGlobalDomain KeyRepeat -int 1
# Show hidden files in Finder by defaults
defaults write com.apple.finder AppleShowAllFiles -bool true
# Make text edit create a new file on launch instead of showing the open pop up
defaults write com.apple.TextEdit NSShowAppCentricOpenPanelInsteadOfUntitledFile -bool NO
# Show Xcode build duration 
defaults write com.apple.dt.Xcode ShowBuildOperationDuration YES
# Default calendar event duration in minutes
defaults write com.apple.iCal 'Default duration in minutes for new event' 30
# Enable dragging windows using ctrl+cmd+mouse
defaults write -g NSWindowShouldDragOnGesture -bool true
# Disable "smart" stuff in Notes.app
defaults write com.apple.Notes ShouldCorrectSpellingAutomatically 0
defaults write com.apple.Notes ShouldPerformTextReplacement 0
defaults write com.apple.Notes ShouldUseSmartCopyPaste 0
defaults write com.apple.Notes ShouldUseSmartDashes 0
defaults write com.apple.Notes ShouldUseSmartLinks 0
defaults write com.apple.Notes ShouldUseSmartQuotes 0
# Screenshots (cmd+shift+# shortcuts) will copy to clipboard
defaults write com.apple.screencapture target clipboard
# Switch to space with open window
defaults write NSGlobalDomain AppleSpacesSwitchOnActivate -bool true
# Disable rearrange spaces by recently used
defaults write com.apple.dock.plist mru-spaces -int 0


# Install Chrome
echo "Installing Chrome"
curl https://dl.google.com/chrome/mac/universal/stable/GGRO/googlechrome.dmg -qq --output ~/Downloads/googlechrome.dmg
open ~/Downloads/googlechrome.dmg 
sleep 2
sudo cp -r /Volumes/Google\ Chrome/Google\ Chrome.app /Applications/


# Setup Brew
echo "Installing Brew"
xcrun git clone https://github.pie.apple.com/homebrew/brew.git /tmp/homebrew
[[ $(arch) == i386 ]] && sudo mv /tmp/homebrew /opt/brew [[ $(arch) == arm64 ]] && sudo mv /tmp/homebrew /opt/homebrew
[[ -d /opt/homebrew/bin ]] && echo "/opt/homebrew/bin" | sudo tee /etc/paths.d/10-brew 
[[ -d /opt/brew/bin ]] && echo "/opt/brew/bin" | sudo tee /etc/paths.d/20-brew

# Setup some brew packages
echo "Installing Brew packages"
alias brew='/opt/homebrew/bin/brew'
brew install wget
brew install htop.ra
brew install --cask raycast
brew install ffmpeg
brew tap homebrew/cask-fonts && brew install --cask font-hack-nerd-font
brew install jq
brew install ifstat
brew install coreutils
brew install nmap


# iTerm2
echo "Installing iTerm2"
curl https://iterm2.com/downloads/stable/latest -L -qq --output ~/Downloads/iTerm2.zip
unzip ~/Downloads/iTerm2.zip -d /Applications

# 1Password
echo "Installing 1Password"
curl https://downloads.1password.com/mac/1Password.zip -L -qq --output ~/Downloads/1password.zip
unzip ~/Downloads/1password.zip -d /Applications
open "/Applications/1Password Installer.app"

# Typora
echo "Installing Typora (you'd still need to activate it"
curl https://download.typora.io/mac/Typora.dmg -L -qq --output ~/Downloads/Typora.dmg
open ~/Downloads/Typora.dmg
sleep 2
sudo cp -r /Volumes/Typora/Typora.app /Applications/

# Glide
## This can't be done because we need AC authentication.
echo "Go to https://tools.apple.com/apps/glide-1/download to download Glide"

# Clone utils repo
mkdir -p ~/pgit
git clone ssh://git@github.com/gur111/utils.git ~/pgit/

# Install oh-my-zsh
echo "Installing omz (Oh-My-ZSH)"
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

