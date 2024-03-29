# .bashrc

# User specific aliases and functions

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi
function get_ip () {
  IFACE=$(ip -4 route | grep default | head -n1 | awk '{print $5}')
  if [ ! -z $IFACE ]; then
     echo -n "|"; ip -4 -o addr show scope global $IFACE | awk '{gsub(/\/.*/, "|",$4); print $4}' | paste -s -d ""
  else
    echo -n "|IP_NOT_FOUND_CHECK_BASHRC|"
  fi
}

get_user_color() {
    if [[ $(whoami) == "root" ]]; then
        echo "\[\033[38;5;1m\]"  # red
    else
        echo "\[\033[38;5;226m\]"  # yellow
    fi
}

if [ $(tput cols) -lt 200 ]; then
    if [ $(tput colors) -gt 7 ]; then
        export PS1="[ \[$(tput sgr0)\]$(get_user_color)\u\[$(tput sgr0)\]@\[$(tput sgr0)\]\[\033[38;5;2m\]\H\[$(tput sgr0)\]\[\033[38;5;6m\]$(get_ip)\[$(tput sgr0)\] \w ]\n\\$ \[$(tput sgr0)\]"
    else
        export PS1="[ \u@\H$(get_ip) \w ]\n\\$ \[$(tput sgr0)\]"
    fi
else
    if [ $(tput colors) -gt 7 ]; then
        export PS1="[ \[$(tput sgr0)\]$(get_user_color)\u\[$(tput sgr0)\]@\[$(tput sgr0)\]\[\033[38;5;2m\]\H\[$(tput sgr0)\]\[\033[38;5;6m\]$(get_ip)\[$(tput sgr0)\] \w ]\\$ \[$(tput sgr0)\]"
    else
        export PS1="[ \u@\H$(get_ip) \w ]\\$ \[$(tput sgr0)\]"
    fi
fi
#unset color_prompt force_color_prompt
