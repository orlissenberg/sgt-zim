alias clr="clear"

alias hackalias="vim ~/.vim/moredots/aliases.sh"
alias hackzsh="vim ~/.vim/moredots/.zshrc"
alias hackvim="vim ~/.vim/.vimrc"
alias hackhttpd="sudo vim /etc/httpd/conf/httpd.conf"
alias hackhosts="sudo vim /etc/hosts"

alias serveapache="sudo service httpd restart"
alias servees="sudo service elasticsearch restart"
alias servemysql="sudo service mysqld restart"
alias servezsh="source ~/.zshrc"

alias mysqlroot="mysql -u root -p"

alias stash="cd ~/Stash/"
alias personal="cd ~/Personal/Projects"

alias vup="vagrant up; vagrant ssh"
alias vhalt="vagrant halt"

alias updatedb="sudo updatedb"
alias macupdatedb="sudo /usr/libexec/locate.updatedb"

alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="ipconfig getifaddr en1"
alias ips="ifconfig -a | grep -o 'inet6\? \(addr:\)\?\s\?\(\(\([0-9]\+\.\)\{3\}[0-9]\+\)\|[a-fA-F0-9:]\+\)' | awk '{ sub(/inet6? (addr:)? ?/, \"\"); print }'"
alias netstats="sudo netstat -tulpn"

source $SGT_ZIM/moredots/artisan.sh
source $SGT_ZIM/moredots/mysql.sh

function enable_run_level () {
    if [[ $# -eq 1 ]]; then
        sudo chkconfig --level 2345 $1 on
    elif [[ $# -eq 2 ]]; then 
        sudo chkconfig --level $2 $1 on
    else
        echo 'Not enough arguments.'
    fi
}

function disable_run_level () {
    if [[ $# -eq 1 ]]; then
        sudo chkconfig --level 2345 $1 off
    elif [[ $# -eq 2 ]]; then 
        sudo chkconfig --level $2 $1 off
    else
        echo 'Not enough arguments.'
    fi
}

