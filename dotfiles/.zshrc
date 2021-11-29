# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/gtelem/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="agnoster"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
HIST_STAMPS="dd/mm/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

HISTSIZE=300000
SAVEHIST=300000

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nano'
else
  export EDITOR='nano'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
export csl="gurt@csl3.cs.technion.ac.il"
alias csl3="ssh gurt@csl3.cs.technion.ac.il -t '/home/gurt/bin/zsh'"
alias ll="ls -lhG"
alias llr="ll -R"
alias yolo="git push -f"
alias suroot="sudo -E -s"
alias netfix="sudo ifconfig wlo1 down;sudo ifconfig wlo1 up"
alias zshconfig="nano ~/.zshrc && source ~/.zshrc"
alias ohmyzsh="nano ~/.oh-my-zsh"
alias .=source
alias gpush='git push'
alias gpull='git pull'
alias gstash='git stash'
alias gpop='git stash pop'
alias gcheckout='git checkout'
alias gco='git checkout'
alias gcommit='git commit'
alias gcm='git commit -m'
alias gstatus='git status'
alias gfetch='git fetch'
alias grm='git rm'
alias gremote='git remote'
alias gdiff='git diff'
alias grevert='git revert'
alias gstatus='git status'
alias grebase='git rebase'
alias grb='git rebase'
alias grbc='git rebase --continue'
alias grba='git rebase --abort'
alias grbi='git rebase -i'
alias grsh='git reset --hard'
alias gadd='git add'
alias gap='git add -p'
gsq() {
	git rebase -i HEAD~$@
}

# For emergencies
alias rockets='git checkout gurt/rockets && git add . && git commit -m "Taking shelter" && git push -f'
alias emergency='rockets'
alias code-red='rockets'

alias pgit='cd ~/pgit'

alias occ="gcc -framework Foundation"
alias cpssh="cat ~/.ssh/id_rsa.pub| pbcopy"
alias bats="/SWE/CoreOS/Tools/ops/bats build"

alias msu-sidebuild-nominate="/SWE/CoreOS/Images/CoreOSEmbeddedPlatformQA/assets/msu_sidebuild/tracking/code/msu-sidebuild-nominate"
alias python3="/usr/local/bin/python3"
alias l="less"
alias ibrew="arch -x86_64 /opt/brew/bin/brew"
alias rmbc='rm **/*_(BACKUP|BASE|LOCAL|REMOTE)_* **/*.orig'

fixKnfs () {
	kdestroy -A
	appleconnect signOut --realm=APPLECONNECT.APPLE.COM —account=gtelem
	appleconnect authenticate --realm=APPLECONNECT.APPLE.COM —account=gtelem
	kinit --renewable gtelem@APPLECONNECT.APPLE.COM
	sudo automount -vc
	sudo killall opendirectoryd
}
bindkey -e
bindkey '^H' backward-kill-word
#bindkey '^[[3~' kill-word # DON'T TURN THIS ON,
bindkey '^[[3;5~' kill-word

bindkey "^[[1;3C" forward-word
bindkey "^[[1;3D" backward-word
export PATH="/usr/local/sbin:$PATH"
export PATH=/usr/local/smlnj/bin:"$PATH"
export PATH="/usr/local/opt/icu4c/sbin:$PATH"
export PATH="/usr/local/opt/icu4c/bin:$PATH"
export PATH="/usr/local/bin:$PATH"
export PATH="$PATH:/opt"

ramdisk() {
	echo "Creating ramdisk"
	if [ -n "$1" ] && [ -n "$2" ]
	then
		diskutil erasevolume HFS+ "$2" `hdiutil attach -nomount ram://$((2048*$1))`
	else
		echo "Usage: ramdisk SIZE_IN_MB DISK_NAME"
	fi
}

prompt_context(){}

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
