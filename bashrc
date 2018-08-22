
# add alais
alias ls='ls -Fh --color'
alias ll='ls -al'
alias la='ls -a'
alias l='la'
alias rm='rm -i'

alias vimdiff='vimdiff -u ~/.vimdiffrc'
alias grep='grep --color=auto'
alias wnv='watch -n 1 nvidia-smi'

color_prompt=yes

# add git completed
source ~/.git-completion.bash
source ~/.git-prompt.sh

# set git prompt
GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWUPSTREAM="auto"
GIT_PS1_SHOWCOLORHINTS="yes"


# set PS1 color
# '\u'=user, 'h'=host name, '\w'=full path
#                     30=Black, 31=Red, 32=Green, 33=Yellow, 34=Blue, 35=Purple, 36=Cyan, 37=White
# Bold High Intensity 90=Black, 91=Red, 92=Green, 93=Yellow, 94=Blue, 95=Purple, 96=Cyan, 97=White
# 0=Regular, 1=Bold, 4=Underline
# reference : https://wiki.archlinux.org/index.php/Color_Bash_Prompt
export PS1="\[\033[35m\]\u\[\033[m\]@\[\033[32m\]\h\[\033[m\]:\[\033[1;33m\]\w \[\033[34m\]\$(__git_ps1 '(%s)')\[\033[m\]\$ "

export TERM="xterm-256color"

# Shift-Tab auto complete
set show-all-if-ambiguous on
bind '"\e[Z":menu-complete' 




