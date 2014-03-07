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

alias mysql-show-dbs="mysql -u root -p -e 'show databases;' -s -N"
alias mysql-show-users="mysql --user=root -p -e 'select user, host from user;' --database=mysql"

function am-create-library () {
    if [[ ! $# -eq 3 ]] 
    then
        echo "Not enough arguments.";
    else
        if [[ -f ./artisan  ]]; then
            ./artisan migrate:make $3 --path="libraries/$2/src/migrations" --package=$1/$2
        else 
            echo "Artisan not found.";
        fi
    fi
}

function am-migrate-library () {
    if [[ ! $# -eq 2 ]] 
    then
        echo "Not enough arguments.";
    else
        if [[ -f ./artisan  ]]; then
            ./artisan migrate --path="libraries/$2/src/migrations" --package=$1/$2
        else 
            echo "Artisan not found.";
        fi
    fi
}

function mysql-db-user-host-pw () {
    HASDB=$(mysql -u root -p -e "show databases like '$1';" -s -N);
    if [[ $HASDB != $1 ]]; then
        mysql --user=root -p -e 'CREATE DATABASE IF NOT EXISTS '$1';'
    fi

    mysql --user=root -p -e 'GRANT ALL PRIVILEGES ON '$1'.* TO '$2'@'$3' IDENTIFIED BY "'$2'";'
}

function mysql-has-db () {
    HASDB=$(mysql -u root -p -e "show databases like '$1';" -s -N);
    if [[ $HASDB == $1 ]]; then
        echo $HASDB;
    fi
}

function mysql-user-setpassword () {
    mysql --user=root -p -e "SET PASSWORD FOR '"$1"'@'"$2"' = PASSWORD('"$3"'); FLUSH PRIVILEGES;";
}

