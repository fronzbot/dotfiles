#===========================
# cshrc file used for work
# ==========================

# If this is a non-interactive shell, exit
if (! $?prompt) exit


# Set color scheme

set   black="%{\033[0;30m%}"
set    blue="%{\033[0;34m%}"
set    cyan="%{\033[0;36m%}"
set   green="%{\033[0;32m%}"
set  orange="%{\033[0;33m%}"
set  purple="%{\033[0;35m%}"
set     red="%{\033[0;31m%}"
set  violet="%{\033[0;35m%}"
set   white="%{\033[0;37m%}"
set  yellow="%{\033[0;33m%}"
set     end="%{\033[0m%}" # This is needed at the end... :(

# Prompt:
# user@hostname dir $

set prompt="\n${green}%n${white}@${green}%M${white} ${blue}%~${white}$ ${end}"
set autolist
set color
set colorcat

# Load aliases file here
source ~/.bash_aliases
if ( -e ~/.aliases ) source ~/.aliases

# Various work-related env vars
setenv EDITOR 'vim'
unsetenv SOS_TIMEOUT
setenv PATH ${PATH}:/tools/scripts/queue/bin:/home/kfroncza/bin
setenv PSF_WRITE_CHUNK_MODE_ON true
setenv TERM screen-256color
setenv WORKENV 1
