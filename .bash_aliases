alias ls='ls --color=auto'
alias lsa='ls -lah'

alias grep='grep --color=auto'

alias usage='du -csh ./* | sort -h; df . -kh --total'
alias psmem='ps auxf | sort -nr -k 4 | head -10'
alias pscpu='ps auxf | sort -nr -k 3 | head -10'
alias memuse='ps -e -o pid,vsz,comm= | sort -n -k 2'
alias git_clean='git branch | grep -v "master" | xargs git branch -D'

alias update_bash='cd ~/Projects/dotfiles; git pull; bash gen_symlinks.sh; cd ~; source ~/.bashrc'

alias tmxn='tmux new -s'
alias tmxa='tmux attach -t'
alias lsx='tmux ls'
alias tkill='tmux kill-session -t'

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
alias userfiles='lsof | grep mnt'
alias mntclean='fuser -km /mnt/user'

#----------------
# Linux VM
#----------------
alias pyvenv='python3 -m virtualenv'
alias hass_dev='source ~/venv/hass/bin/activate; cd ~/Projects/home-assistant'
alias blink_dev='source ~/venv/blinkpy/bin/activate; cd ~/Projects/blinkpy'
alias mount_shares='sudo mount -t 9p -o trans=virtio /unraid_shares /mnt/shares; sudo mount -t 9p -o trans=virtio /unraid_disks /mnt/disks'
alias vncstart='x11vnc -rfbauth /home/kevin/.vnc/passwd'

