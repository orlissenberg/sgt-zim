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

