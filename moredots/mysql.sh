alias mysql-show-dbs="mysql -u root -p -e 'show databases;' -s -N"
alias mysql-show-users="mysql --user=root -p -e 'select user, host from user;' --database=mysql"

function mysql_db_user_host () {
    USER="root"
    read -p "Password for $USER: " PASS

    HASDB=$(mysql -u $USER --password=$PASS -e "show databases like '$1';" -s -N);
    if [[ $HASDB != $1 ]]; then
        mysql --user=$USER --password=$PASS -e 'CREATE DATABASE IF NOT EXISTS '$1';'
    fi

    mysql --user=$USER --password=$PASS -e 'GRANT ALL PRIVILEGES ON '$1'.* TO '$2'@'$3' IDENTIFIED BY "'$2'";'
}

function mysql_has_db () {
    HASDB=$(mysql -u root -p -e "show databases like '$1';" -s -N);
    if [[ $HASDB == $1 ]]; then
        echo $HASDB;
    fi
}

function mysql_user_setpassword () {
    read -p "Password for $1@$2: " PASS
    mysql --user=root -p -e "SET PASSWORD FOR '"$1"'@'"$2"' = PASSWORD('"$PASS"'); FLUSH PRIVILEGES;";
}