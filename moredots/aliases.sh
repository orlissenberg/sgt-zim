alias clr="clear"

alias hackalias="vim ~/.vim/moredots/aliases.sh"
alias hackzsh="vim ~/.vim/moredots/.zshrc"
alias hackvim="vim ~/.vim/.vimrc"
alias hackhttpd="sudo vim /etc/httpd/conf/httpd.conf"
alias hackhosts="sudo vim /etc/hosts"
alias hackphpini="sudo vim /etc/php.ini"
alias hackelasticconf="sudo vim /etc/elasticsearch/elasticsearch.yml"

alias serveapache="sudo service httpd restart"
alias servees="sudo service elasticsearch restart"
alias servemysql="sudo service mysqld restart"
alias servezsh="source ~/.zshrc"

alias mysqlroot="mysql -u root -p"

alias stash="cd ~/Stash/"
alias personal="cd ~/Personal/Projects"
alias elastic="cd /usr/share/elasticsearch"
alias elasticdata="cd /var/lib/elasticsearch"

alias vup="vagrant up; vagrant ssh"
alias vhalt="vagrant halt"
alias vrun="VboxManage list runningvms"
alias vssh="vagrant ssh"

alias phpspec="php vendor/bin/phpspec"
alias specrun="phpspec run -v"
alias specdes="phpspec describe"

alias phpunit="php vendor/bin/phpunit"

alias updatedb="sudo updatedb"
alias macupdatedb="sudo /usr/libexec/locate.updatedb"

alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias ips="ifconfig -a | grep -o 'inet6\? \(addr:\)\?\s\?\(\(\([0-9]\+\.\)\{3\}[0-9]\+\)\|[a-fA-F0-9:]\+\)' | awk '{ sub(/inet6? (addr:)? ?/, \"\"); print }'"
alias netstats="sudo netstat -tulpn"

source $SGT_ZIM/moredots/artisan.sh
source $SGT_ZIM/moredots/mysql.sh

function rpm_search () {
    sudo rpm -qa | grep $1
}

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

