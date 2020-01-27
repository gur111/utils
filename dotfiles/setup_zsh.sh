sudo apt install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

sudo apt-get install fonts-powerline
mkdir -p ~/.config/fontconfig/conf.d
wget "https://raw.githubusercontent.com/powerline/fonts/master/fontconfig/50-enable-terminess-powerline.conf"
fc-cache -vf
sudo fc-cache -vf

echo "Inside ~/.zshrc"
echo 'Change theme to ZSH_THEME="agnoster"'
echo 'Add at the bottom "prompt_context(){}"'

echo "Change in the terminal profile settings to use one of the powerline fonts"
echo 'Possibly "Noto Mono Powerline Regualr" size 15'
echo "You might need to reboot"
