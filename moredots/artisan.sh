function art_migrate_make_lib_org_pack_name () {
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

function art_migrate_lib_org_pack () {
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