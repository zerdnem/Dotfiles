autoload -U compinit
compinit
autoload -U promptinit
promptinit
prompt walters
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
export PATH=~/bin:$PATH
PATH="$(ruby -e 'print Gem.user_dir')/bin:$PATH"
#history
HISTFILE=$HOME/.zsh-history
HISTSIZE=3000
SAVEHIST=10000 # nice for logging
setopt extended_history
setopt share_history
setopt HIST_IGNORE_DUPS
function history-all { history -E 1  }
source /usr/bin/virtualenvwrapper.sh
export VIRTUALENVWRAPPER_PYTHON=/home/jjan/bin/python
# Colored ManPages
export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;31m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;32m'
#alias
alias bye='systemctl poweroff'
alias brb='systemctl reboot'
alias ls='ls --color=auto'
alias grep='grep --color=auto'

source $HOME/.zsh/zsh-history-substring-search/zsh-history-substring-search.zsh
# bind UP and DOWN arrow keys
zmodload zsh/terminfo
bindkey "$terminfo[kcuu1]" history-substring-search-up
bindkey "$terminfo[kcud1]" history-substring-search-down

## Setup zsh-autosuggestions
#source $HOME/.zsh/zsh-autosuggestions/autosuggestions.zsh
## Enable autosuggestions automatically
#zle-line-init() {
    #zle autosuggest-start
#}
#zle -N zle-line-init

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
source ~/.rvm/scripts/rvm
. ~/.zsh/z/z.sh

# Debug mode
DEBUG=0
function debug {
    [[ $DEBUG -lt 0 ]] && echo "\033[1;33mDEBUG:\033[0m zsh: $1"
}
function error {
    echo "\033[1;31mERROR:\033[0m zsh: $1"
}

for r in $HOME/.zsh/*.zsh; do
    debug "sourcing $r"
    source $r
done

[[ -s "$HOME/.local/share/marker/marker.sh"  ]] && source "$HOME/.local/share/marker/marker.sh"

x () {
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1 ;;
      *.tar.gz)    tar xzf $1 ;;
      *.bz2)       bunzip2 $1 ;;
      *.rar)       rar x $1 ;;
      *.gz)        gunzip $1 ;;
      *.tar)       tar xvf $1 ;;
      *.tbz2)      tar xjf $1 ;;
      *.tgz)       tar xzf $1 ;;
      *.zip)       unzip $1 ;;
      *.Z)         uncompress $1 ;;
      *.7z)        7za x $1 ;;
      *.xz)        xz -d $1 ;;
      *)           echo "'$1' cannot be extracted via extract()" ;;
    esac
  else
    echo "'$1' is not a valid file to extract."
  fi
}
