# Extra Setup To Make It More Usable

After installing oh-my-zsh and powerline fonts (see [setup script](https://github.com/gur111/utils/blob/master/dotfiles/setup_zsh.sh)) you may want to do the following.

## Setup Powerline Fonts In Terminal
Open the terminal profile settings and change the font to something "powerline-patched". I like `Noto Mono Powerline Regualr` as size 15

Might need to reboot


## Change To The `agnoster` Theme
open `~/.zshrc`:

```nano ~/.zshrc```

CTRL+W -> theme -> Enter to search for the theme property (relatively at the top). Change it to:

```ZSH_THEME="agnoster"```

## Remove `user@host` From Prompt:
At the bottom of the same file (`.zshrc`) add:
```prompt_context(){}"```


## Key Bindings
To be able to CTRL+Backspace and CTRL+DEL to delete whole words, follow this.
```nano ~/.oh-my-zsh/lib/key-bindings.zsh```
At the bottom, add the following lines
```# Delete whole words
bindkey '^H' backward-kill-word
bindkey '^[[3;5~' kill-word
```
