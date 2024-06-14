# Some good standards, which are not used if the user
# creates his/her own .bashrc/.bash_profile

# --show-control-chars: help showing Korean or accented characters
# Git aliases
alias init='git init'
alias gs='git status -sb'
alias gcc='git checkout'
alias gcm='git checkout master'
alias gaa='git add --all'
alias gc='git commit'
alias push='git push'
alias gpo='git push origin'
alias pull='git pull'
alias clone='git clone'
alias stash='git stash'
alias pop='git stash pop'
alias ga='git add'
alias gb='git branch'
alias gl="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias gm='git merge'
alias ignor='touch .gitignore'

# Bash aliases
alias als='txt /c/Program\ Files/Git/etc/profile.d/aliases.sh'
alias o='explorer .'
alias q='exit'
alias c..='cd ..'
alias c...='cd ../../'
alias c....='cd ../../../'
alias c.....='cd ../../../../'
alias bashclear='echo "" > ~/.bash_history'
alias cls='clear'
alias ls='ls -F --color=auto --show-control-chars'
alias ll='ls -l'
alias ll.='ls -la'
alias lls='ls -la --sort=size'
alias llt='ls -la --sort=time'
alias rm='rm -iv'
alias work='/c/Users/ahm_e/Documents/MATLAB'

# Bash shell settings
# Typing a directory name just by itself will automatically change into that directory.
shopt -s autocd

# Automatically fix directory name typos when changing directory.
shopt -s cdspell

# Automatically expand directory globs and fix directory name typos whilst completing. 
# Note, this works in conjuction with the cdspell option listed above.
shopt -s direxpand dirspell

# Enable the ** globstar recursive pattern in file and directory expansions.
# For example, ls **/*.txt will list all text files in the current directory hierarchy.
shopt -s globstar

# Ignore lines which begin with a <space> and match previous entries.
# Erase duplicate entries in history file.
HISTCONTROL=ignoreboth:erasedups

# Ignore saving short- and other listed commands to the history file.
HISTIGNORE=?:??:history

# The maximum number of lines in the history file.
HISTFILESIZE=99999

# The number of entries to save in the history file.
HISTSIZE=99999

# Set Bash to save each command to history, right after it has been executed.
PROMPT_COMMAND='history -a'






case "$TERM" in
xterm*)
	# The following programs are known to require a Win32 Console
	# for interactive usage, therefore let's launch them through winpty
	# when run inside `mintty`.
	for name in node ipython php php5 psql python2.7
	do
		case "$(type -p "$name".exe 2>/dev/null)" in
		''|/usr/bin/*) continue;;
		esac
		alias $name="winpty $name.exe"
	done
	;;
esac
