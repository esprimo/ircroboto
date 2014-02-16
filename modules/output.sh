output.red() { echo -en '\E[0;31m'"$1"; tput sgr0; }
output.green() { echo -en '\E[0;32m'"$1"; tput sgr0; }
output.cyan() { echo -en '\E[0;36m'"$1"; tput sgr0; }
output.debugMsg() { echo -en '\E[0;36m'"debug: "; tput sgr0; echo "$1"; }