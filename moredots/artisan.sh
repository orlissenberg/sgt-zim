
function artven_migrate_make () {
    if [[ ! $# -eq 3 ]] 
    then
        echo "Not enough arguments: vendor package name";
    else
        if [[ -f ./artisan  ]]; then
            ./artisan migrate:make $3 --path="vendor/$1/$2/src/migrations" --package=$1/$2
        else 
            echo "Artisan not found.";
        fi
    fi
}

function artven_migrate () {
    if [[ ! $# -eq 2 ]] 
    then
        echo "Not enough arguments: vendor package";
    else
        if [[ -f ./artisan  ]]; then
            ./artisan migrate --path="vendor/$1/$2/src/migrations" --package=$1/$2
        else 
            echo "Artisan not found.";
        fi
    fi
}

function artlib_migrate_make () {
    if [[ ! $# -eq 3 ]] 
    then
        echo "Not enough arguments: vendor package name";
    else
        if [[ -f ./artisan  ]]; then
            ./artisan migrate:make $3 --path="libraries/$2/src/migrations" --package=$1/$2
        else 
            echo "Artisan not found.";
        fi
    fi
}

function artlib_migrate () {
    if [[ ! $# -eq 2 ]] 
    then
        echo "Not enough arguments: vendor package ";
    else
        if [[ -f ./artisan  ]]; then
            ./artisan migrate --path="libraries/$2/src/migrations" --package=$1/$2
        else 
            echo "Artisan not found.";
        fi
    fi
}
