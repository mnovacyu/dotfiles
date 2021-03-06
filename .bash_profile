# GIT
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# COLORS
export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
export PS1='\[\e[0;33m\]\h:\[\033[32m\]\[\033[0;33m\]\W\[\033[m\]\[\033[32m\]$(parse_git_branch)\[\e[m\] '

# TERMINAL ALIASES
alias vi='vim'
alias c='clear'                             # c:        Clear terminal display
alias f='open -a Finder ./'                 # f:        Open a finder window
alias ~='cd ~'                              # ~:        Go Home
alias ll='ls -FGlAhp'                       # Preferred 'ls' implementation
alias mtr='sudo /usr/local/sbin/mtr'        # mtr
alias dk='docker kill $(docker ps -q) && docker rm $(docker ps -a -q)'  # Kill all Docker containers
function cs () { cd "$1" && ls; }           # cd & ls

# NETWORKING
alias myip='echo "`curl -s api.ipify.org`"' # myip:     Public facing IP
alias flushdns='dscacheutil -flushcache'    # flushdns:
