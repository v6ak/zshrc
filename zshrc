
autoload -U colors && colors

setopt interactivecomments # comments in interactive shell

# The following lines were added by compinstall

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _ignored
zstyle ':completion:*' expand prefix
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-suffixes true
zstyle ':completion:*' matcher-list 'r:|[._-]=* r:|=*' 'r:|[._-]=* r:|=*' 'r:|[._-]=* r:|=*' 'r:|[._-]=* r:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' original true
zstyle ':completion:*' preserve-prefix '//[^/]##/'
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' verbose true
zstyle :compinstall filename '/home/user/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt nomatch notify
bindkey -e
# End of lines configured by zsh-newuser-install

bindkey ';5D' emacs-backward-word
bindkey ';5C' emacs-forward-word
export WORDCHARS=''

if [ -e /etc/zsh_command_not_found ]; then
	. /etc/zsh_command_not_found
fi





# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# some git aliases. mostly copied from somewhere, probably from oh-my-zsh

alias g=git
alias ga='git add'
#gaa='git add --all'
#gap='git add --patch'
#gb='git branch'
#gba='git branch -a'
#gbr='git branch --remote'
gc='git commit -v -S'
#gca='git commit -v -a'
#gcl='git config --list'
#gclean='git reset --hard && git clean -dfx'
#gcm='git checkout master'
#gcmsg='git commit -m'
alias gco='git checkout'
#agcount='git shortlog -sn'
#alias gcp='git cherry-pick'
alias gcs='git commit -S'
alias gd='git diff'
#gdc='git diff --cached'
#gdt='git difftool'
#gg='git gui citool'
#gga='git gui citool --amend'
#ggpnp='git pull origin $(current_branch) && git push origin $(current_branch)'
#ggpull='git pull origin $(current_branch)'
#ggpur='git pull --rebase origin $(current_branch)'
#ggpush='git push origin $(current_branch)'
#gignore='git update-index --assume-unchanged'
#gignored='git ls-files -v | grep "^[[:lower:]]"'
#git-svn-dcommit-push='git svn dcommit && git push github master:svntrunk'
#gk='gitk --all --branches'
alias gl='git pull'
alias glg='git log --stat --max-count=10'
alias glgg='git log --graph --max-count=10'
alias glgga='git log --graph --decorate --all'
alias glo='git log --oneline --decorate --color'
alias glog='git log --oneline --decorate --color --graph'
#glp=_git_log_prettily
#gm='git merge'
#gmt='git mergetool --no-prompt'
alias gp='git push'
#gpoat='git push origin --all && git push origin --tags'
#gr='git remote'
#grba='git rebase --abort'
#grbc='git rebase --continue'
#grbi='git rebase -i'
#grh='git reset HEAD'
#grhh='git reset HEAD --hard'
#grmv='git remote rename'
#grrm='git remote remove'
#grset='git remote set-url'
#grt='cd $(git rev-parse --show-toplevel || echo ".")'
#grup='git remote update'
#grv='git remote -v'
#gsd='git svn dcommit'
#gsps='git show --pretty=short --show-signature'
#gsr='git svn rebase'
#gss='git status -s'
alias gst='git status'
#gsta='git stash'
#gstd='git stash drop'
#gstp='git stash pop'
#gsts='git stash show --text'
#gts='git tag -s'
#gunignore='git update-index --no-assume-unchanged'
#gunwip='git log -n 1 | grep -q -c "\-\-wip\-\-" && git reset HEAD~1'
alias gup='git pull --rebase'
#gvt='git verify-tag'
#gwc='git whatchanged -p --abbrev-commit --pretty=medium'
#gwip='git add -A; git ls-files --deleted -z | xargs -r0 git rm; git commit -m "--wip--"'

# Chuch Norris reportedly does not use sudo, he just types "Chuck Norris" before the command. The same applies to v6ak.
alias v6ak=sudo

# Oh my zsh
if [ -e ~/.zshrc-oh-my-zsh ]; then
	export ZSH=/opt/oh-my-zsh
	DISABLE_UPDATE_PROMPT=true
	DISABLE_AUTO_UPDATE=true
	ZSH_THEME=""
	source ~/.zshrc-oh-my-zsh
	source $ZSH/oh-my-zsh.sh
fi


# prompt

. "$(dirname "$0")/zshrc-prompt"

