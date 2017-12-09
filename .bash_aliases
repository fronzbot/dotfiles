alias ls='ls --color=auto'
alias lsa='ls -lah'

alias grep='grep --color=auto'

alias usage='du -csh ./* | sort -h; df . -kh --total'
alias psmem='ps auxf | sort -nr -k 4 | head -10'
alias pscpu='ps auxf | sort -nr -k 3 | head -10'
alias memuse='ps -e -o pid,vsz,comm= | sort -n -k 2'
alias git_clean='git branch | grep -v "master" | xargs git branch -D'

alias update_bash='cd ~/Projects/dotfiles; git pull; bash gen_symlinks.sh; cd ~; source ~/.bashrc'

#=========================================
# Some aliases used for specific systems
#=========================================

#----------------
# Unraid
#----------------
alias ipfail='more /mnt/user/appdata/letsencrypt/log/fail2ban/fail2ban.log | grep "Ban"'
alias cdplex='cd /mnt/user/appdata/plex'
alias cdhass='cd /mnt/user/appdata/home-assistant'
alias docker_cleanup='docker rmi -f $(docker images | grep "<none>" | awk "{print \$3}")'

#----------------
# Debian VM
#----------------
alias hass_dev='cd ~/home-assistant; source venv/bin/activate'
alias mount_shares='sudo mkdir /share; sudo mount -t 9p -o trans=virtio /shares /share'
