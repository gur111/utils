# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
export PATH=$HOME/Library/Python/3.8/bin:$HOME/Library/Android/sdk/platform-tools:$HOME/bin:/AppleInternal/usr/local/bin:/usr/local/bin:$PATH
#export PATH=$HOME/Library/Python/3.8/bin:$HOME/Library/Android/sdk/platform-tools:$HOME/bin:/AppleInternal/usr/local/bin:/usr/local/bin:$HOME/pgit/yabai/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
#ZSH_THEME="agnoster"
ZSH_THEME="powerlevel10k/powerlevel10k"

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

HISTSIZE=3000000
SAVEHIST=3000000

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

# Aliases
#export csl="gurt@csl3.cs.technion.ac.il"
#alias csl3="ssh gurt@csl3.cs.technion.ac.il -t '/home/gurt/bin/zsh'"
alias bison="/opt/homebrew/opt/bison/bin/bison"
alias vact="source ./venv/bin/activate"
alias lli="/opt/homebrew/opt/llvm/bin/lli"
alias ll="ls -lhG"
alias lla="ll -a"
alias llr="ll -R"
alias yolo="git push -f"
alias suroot="sudo -E -s"
alias netfix="sudo ifconfig wlo1 down;sudo ifconfig wlo1 up"
alias zshreload='source ~/.zshrc'
alias zshconfig="nano ~/.zshrc && source ~/.zshrc"
alias utils="cd ~/pgit/utils/ && ll"
alias ohmyzsh="nano ~/.oh-my-zsh"
alias .=source
alias m="man"
# NOT WORKING: alias gjoke=curl -s https://raw.githubusercontent.com/EugeneKay/git-jokes/lulz/Jokes.txt | awk 'BEGIN { srand() } int(rand() * NR) == 0 { x = $0 } END { print x }'

## Yabai aliases
alias byr='  brew services restart yabai'
alias byoff='brew services stop yabai'
alias byon=' brew services start yabai'
alias ykill='brew services stop yabai ; killall yabai'
alias yvon='screen -O -dmS yabai bash -c "yabai --verbose 2>&1 | tee ~/Downloads/yabai_$(date -v+10S +%Y-%m-%dT%H_%M_%S).log"'

## Git aliases
alias gpush='git push'
alias gps='git push'
alias gpull='git pull'
alias gpl='git pull'
alias gstash='git stash'
alias gss='git stash save'
alias gsshow='git stash show'
alias gspush='git stash push'
alias gpop='git stash pop'
alias gcheckout='git checkout'
alias gco='git checkout'
alias gcommit='git commit'
alias gca='git commit --amend'
alias gcm='git commit -m'
alias gstatus='git status'
alias gfetch='git fetch'
alias grm='git rm'
alias gremote='git remote'
alias grguo='git remote get-url origin'
alias gdiff='git diff'
alias gmt='git mergetool'
alias grevert='git revert'
alias gstatus='git status'
alias grebase='git rebase'
alias grb='git rebase'
alias grbc='git rebase --continue'
alias grba='git rebase --abort'
alias grbi='git rebase -i'
alias grsh='git reset --hard'
alias gro='git reset --hard origin/$(git rev-parse --abbrev-ref HEAD)'
alias gdo='git diff origin/$(git rev-parse --abbrev-ref HEAD)'

alias grbdb='git fetch && git rebase origin/rel/Dawnburst'
alias grbdbb='git fetch && git rebase origin/rel/DawnburstB'
alias grbdbc='git fetch && git rebase origin/rel/DawnburstC'
alias grbdbd='git fetch && git rebase origin/rel/DawnburstD'
alias grbdbe='git fetch && git rebase origin/rel/DawnburstE'
alias grbdbf='git fetch && git rebase origin/rel/DawnburstF'

alias gadd='git add'
alias gap='git add -p'
alias psrfetch='find $HOME/git/psr-tools -type d -depth 1 -exec git --git-dir={}/.git fetch \;'
alias db='gco rel/Dawnburst'
alias gcodb='gco rel/Dawnburst'
alias gcodbb='gco rel/DawnburstB'
alias gcodbc='gco rel/DawnburstC'
alias gcodbe='gco rel/DawnburstE'
alias gcodbf='gco rel/DawnburstF'
alias sydro='gco rel/Sydro'

alias k9='kill -9'

alias dls='cd ~/Downloads'
alias xpe='xpath -e'
alias tssAnalyze="/Users/$(whoami)/git/psr-tools/shared/tssAnalyzeAndUpload.py"

## Git Checkout Radar
gcr() {
	git checkout eng/PR-$@
}

gcob() {
	git checkout -b eng/PR-$@
	git push --set-upstream origin eng/PR-$@
	# Add a gco command to the ZSH history so we can easily checkout to that branch later
	print -s gco eng/PR-$@
}

gnb() {
	git checkout -b $@
	git push --set-upstream origin $@
	# Add a gco command to the ZSH history so we can easily checkout to that branch later
	print -s gco $@
}

gcr() {
	git checkout eng/PR-$@
}

gsq() {
	git rebase -i HEAD~$@
}

# For emergencies
alias rockets='git checkout gurt/rockets && git add . && git commit -m "Taking shelter" && git push -f'
alias emergency='rockets'
alias code-red='rockets'


# Repositories
alias pgit='cd ~/pgit'

## Apple repos
alias ptb='cd ~/git/psr-tools/PurpleToolbox'
alias msu='cd ~/git/psr-tools/MobileSoftwareUpdate'
alias fdr='cd ~/git/psr-tools/libFDR'
alias mdv='cd ~/git/psr-tools/MobileDevice'
alias lai='cd ~/git/psr-tools/libauthinstall'
alias las='cd ~/git/psr-tools/libauthinstall'
alias dptb='cd ~/git/dPsr-tools/PurpleToolbox'
alias dmsu='cd ~/git/dPsr-tools/MobileSoftwareUpdate'
alias dmdv='cd ~/git/dPsr-tools/MobileDevice'
alias dlai='cd ~/git/dPsr-tools/libauthinstall'
alias dlas='cd ~/git/dPsr-tools/libauthinstall'
alias omsu='cd ~/git/iosota/MobileSoftwareUpdate'
alias osus='cd ~/git/iosota/softwareupdateservices'
alias osusui='cd ~/git/iosota/softwareupdateservicesui'
alias oma='cd ~/git/iosota/mobileasset'
alias osub='cd ~/git/iosota/softwareupdatebridge'
alias osuc='cd ~/git/iosota/softwareupdatecontroller'
alias oset='cd ~/git/iosota/softwareupdatesettings'
alias domsu='cd ~/git/diosota/MobileSoftwareUpdate'
alias dosus='cd ~/git/diosota/softwareupdateservices'
alias dosusui='cd ~/git/diosota/softwareupdateservicesui'
alias doma='cd ~/git/diosota/mobileasset'
alias dosub='cd ~/git/diosota/softwareupdatebridge'
alias dosuc='cd ~/git/diosota/softwareupdatecontroller'
alias doset='cd ~/git/diosota/softwareupdatesettings'
alias cdmsu='cd MobileSoftwareUpdate'

# NeRD stuff
NERD_LOG_CMD="log stream --info --debug --filter 'process:\"nerd\"' --filter 'process:\"mobileassetd\"' --filter 'process:\"softwareupdated\"' --filter 'process:\"UpdateBrainService\"' | tee nerd.log"
alias relayca='tcprelay --locationid 8414100 --portoffset 14000 ssh'
alias relayb='tcprelay --locationid 8411100 --portoffset 13000 ssh'
alias sshca1='ssh -o NoHostAuthenticationForLocalhost=yes -o UseKeychain=yes root@localhost -p14022'
alias sshb='ssh -o NoHostAuthenticationForLocalhost=yes -o UseKeychain=yes root@localhost -p13022'
alias sshfe='ssh -o NoHostAuthenticationForLocalhost=yes -o UseKeychain=yes root@localhost -p23022'
alias nerdsend='mkdir -p ./usr/libexec/ && cp nerd ./usr/libexec/ && find ./usr/ | grep nerd | cpio -o --file ./nerd.cpgz -d && scp -o NoHostAuthenticationForLocalhost=yes nerd.cpgz root@appletv:~/. && ssh -o NoHostAuthenticationForLocalhost=yes root@appletv "darwinup install nerd.cpgz && killall -30 nerd && $NERD_LOG_CMD"'
alias cpnerd='echo "nvram -s boot-command=recover ; nvram -s auto-boot=true ; nvram -s ota-outcome=fail ;nvram -p ; reboot" | pbcopy'
nerdboot() {
        ssh -o NoHostAuthenticationForLocalhost=yes -o UseKeychain=yes root@$@ "nvram -s boot-command=recover ; nvram -s auto-boot=true ; nvram -s ota-outcome=fail ;nvram -p ; reboot"
}

nssh() {
	ssh -o NoHostAuthenticationForLocalhost=yes -o UseKeychain=yes root@$@
}

nsusdl() {
#	set -e
	REMOTE_DIR="/private/var/MobileSoftwareUpdate/MobileAsset/AssetsV2/com_apple_MobileAsset_SoftwareUpdate/dbcd3423c43b22b0a58e65f827fb494d69b8f98c.asset"
	REMOTE_DIR_TMP="$REMOTE_DIR"
	LOCAL_UPDATE_DIR_NAME="$2"
	# Copy to device
#	scp -r -P$1 -o NoHostAuthenticationForLocalhost=yes -o UseKeychain=yes ~/Downloads/$LOCAL_UPDATE_DIR_NAME  root@localhost:$REMOTE_DIR_TMP
	rsync -avzh --progress ~/Downloads/$LOCAL_UPDATE_DIR_NAME/ root@$3:$REMOTE_DIR_TMP
#	nssh localhost -p$1 "setclass $REMOTE_DIR D  && chown -R mobile $REMOTE_DIR && test_software_update $REMOTE_DIR/AssetData -suspend"
	nssh localhost -p$1 "setclass $REMOTE_DIR D && test_software_update $REMOTE_DIR/AssetData -suspend"
}

sshcan() {
echo "set timeout 5 \
set cmd [lrange $argv 1 end] \
set password [lindex $argv 0] \
eval spawn $cmd \
expect \"password:\" \
send \"$password\\r\" \
interact" > /usr/bin/expect
}

alias nerdfilter="ssh -o NoHostAuthenticationForLocalhost=yes -o UseKeychain=yes root@appletv \"log stream --info --debug --filter 'process:nerd' --filter 'process:mobileassetd' --filter 'process:softwareupdated' --filter 'process:UpdateBrainService'\""

alias occ="gcc -framework Foundation"
alias cpssh="cat ~/.ssh/id_rsa.pub| pbcopy"
alias fbats='/AppleInternal/Applications/Scripts/bats build'
alias bats="/AppleInternal/Applications/Scripts/bats build --lane Basic"
alias fbatsc='fbats -p ${PWD##*/}:$(git branch --show-current) --infer-radars -u $(whoami) --no-base-tag'
alias batsc="fbatsc --lane Basic"
alias fbatscd="fbatsc -b CurrentDawn"
alias fbatscdb="fbatsc -b CurrentDawn+"

alias glide-filter-current='/Applications/Glide.app/Contents/MacOS/clide export --debug  --last 10d -p "process=nerd or process~/.*(softwareupdate|SUSUI|brain|nanosubridge|sucontroller|livability|preferences|mobileassetd|network|launchd).*/ or library:softwareupdate or process=nesessionmanager or process:^springboard" system_logs.logarchive system_logs_SUSFull.glide'

alias msu-sidebuild-nominate="/SWE/CoreOS/Images/CoreOSEmbeddedPlatformQA/assets/msu_sidebuild/tracking/code/msu-sidebuild-nominate"
alias nominatec='echo $(git log -1 --pretty=format:%s) && RADAR_ID=$(git branch --show-current | cut -d "-" -f 2) && echo "Submit radar $RADAR_ID? [y/N]" && read REPLY && echo && [[ $REPLY =~ ^[Yy]$ ]] && msu-sidebuild-nominate -r $RADAR_ID'
alias ihd="sudo green-restore --knox --install-tools"
alias python3="/usr/local/bin/python3"
alias l="less"
alias psr='cd ~/git/psr-tools/'
alias pshared='cd ~/git/psr-tools/shared/'
alias ota='cd ~/git/iosota/'
alias ibrew="arch -x86_64 /opt/homebrew/bin/brew"
alias rmbc="rm -f **/*(_(BACKUP|BASE|LOCAL|REMOTE)_*|.orig)"
alias y='echo "You are too tired. Go to sleep. If you say \"yes\" to everything, what does yes even mean???....."'

# Function to list files matching pattern and them prompt to remove
function rmq {
    ll *$1*
    # Prompt y/N
    echo -n "Remove files matching pattern? (y/N) "
    read REPLY

    # read "REPLY?Remove files matching pattern? (y/N) " -k
    # Check answer
    if [[ $REPLY =~ ^[Yy]$ ]]
    then
        # Remove files matching pattern
        echo "Removing files"
        rm -f *$1*
        echo "DONE"
    else
        echo "Not removing anything"
    fi
}

# Android and ADB stuff

alias set-install-cert-check='adb shell settings put global verifier_verify_adb_installs'


fixKnfs () {
	kdestroy -A
	#appleconnect signOut --realm=APPLECONNECT.APPLE.COM —account=$(whoami)
	appleconnect authenticate --realm=APPLECONNECT.APPLE.COM —account=$(whoami)
	kinit --renewable $(whoami)@APPLECONNECT.APPLE.COM
	kinit $(whoami)@OD.APPLE.COM
	sudo automount -vc
	sudo killall opendirectoryd
}

psrgco() {
	echo "Checking out psr branches"
	repos=(PurpleRestore MobileDevice libauthinstall libFDR PurpleToolbox)
	orig_path=$(pwd)

	if [ -n "$1" ]
	then
		for t in ${repos[@]}; do
			echo "Checking out $t to $1"
			cd "/Users/$(whoami)/git/psr-tools/$t/"
			git checkout $1 > /dev/null
		done
		cd "$orig_path"
	else
		echo "Usage: psrgco BRANCH"
	fi
}

alias signSel='defaults write com.apple.sear.acsign PreferredKeyResidency -string'

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
export PATH="/Applications/XcodeDb.app/Contents/Developer/Platforms/MacOSX.platform/usr/local/bin:$PATH"
export PATH="/opt/homebrew/bin:$PATH"

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
#[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

source $(brew --prefix nvm)/nvm.sh


# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Auto setup the correct signing method
autoSelSigningMethod () {
	if [ -n "$SSH_CLIENT" ] || [ -n "$SSH_TTY" ]; then
		signSel remote
	else
		signSel SEP
	fi
}
alias git='autoSelSigningMethod; /usr/bin/git'

# Tmp aliases
#### Added by green-restore install-tools
autoload -Uz compinit && compinit
####
