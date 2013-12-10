# =========== CUSTOM FUNCTIONS ===============
function mkcd() {
  mkdir $1;
  cd $1;
}

# =========== SHOW BRANCH ===============
source "$CONFIG_HOME/bin/git-prompt.sh"

# =========== TERMINAL COLORS ==============
NM="\[\033[0;38m\]" # means no background and white lines
HI="\[\033[0;37m\]" # change this for letter colors
HII="\[\033[0;31m\]" # change this for letter colors
GN="\[\033[0;32m\]" # change this for letter colors
SI="\[\033[0;33m\]" # this is for the current directory
IN="\[\033[0m\]"
export PS1=
export PS1="$PS1$NM[ "                     # White open bracket
export PS1="$PS1$HI\u"                     # Gray username
export PS1="$PS1$NM@"                      # White @
export PS1="$PS1$HII\h"                    # Red hostname
export PS1="$PS1$NM:"                      # White @
export PS1="$PS1$SI\w "                    # Brown path
export PS1="$PS1$GN\$(__git_ps1 \"%s \")"  # Git
export PS1="$PS1$NM] "                     # White close bracket
export PS1="$PS1$IN"                       # Reset font color

set -o vi
