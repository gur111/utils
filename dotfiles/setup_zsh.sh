sudo apt install zsh fonts-powerline curl wget -y
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

mkdir -p ~/.config/fontconfig/conf.d
wget "https://raw.githubusercontent.com/powerline/fonts/master/fontconfig/50-enable-terminess-powerline.conf"
fc-cache -vf
sudo fc-cache -vf

sed -i -- 's/robbyrussell/agnoster/g' ~/.zshrc
echo "prompt_context(){}" >> ~/.zshrc

echo "Change in the terminal profile settings to use one of the powerline fonts"
echo 'Possibly "Noto Mono Powerline Regualr" size 15'
echo "You might need to reboot"
