

sudo apt install i3 kbdd
ln -s ~/Documents/git/utils/i3-configs/config ~/.config/i3/config

sed -i -- 's/%{%k%F{$CURRENT_BG}%}$SEGMENT_SEPARATOR/%{%k%F{$CURRENT_BG}%}\\n$SEGMENT_SEPARATOR/g' ~/.oh-my-zsh/themes/agnoster.zsh-theme
