#!/bin/bash

set -e

# logger
logging(){
    DATE=$(date "+%Y-%m-%d %T,%3N")
    # the function requires 1 or 2 arguments
    case $# in
    0)
        logging 'ERROR' 'No arguments passed to function logging in script setup_nginx.sh'
        exit 1
    ;;
    1)
        SEVERITY='INFO'
        MESSAGE=$1
    ;;
    2)
        SEVERITY=$1
        MESSAGE=$2
    ;;
    *)
        logging 'ERROR' 'Too many arguments passed to function logging in script setup_nginx.sh'
        exit 1
    ;;
    esac

    echo "$DATE - $SEVERITY - $MESSAGE">>logs/provisioning.log
}

# echo with separators
print(){
    echo '-----------------------------------------------'
    echo $1
    echo '-----------------------------------------------'
}

apt update -y
# Install nginx
if [ $( apt list --installed -a  nginx | egrep -i '^nginx' | wc -l ) -eq 0 ]; then
    print 'Installation of NGINX started...'
    logging 'Installation of NGINX started...'
    apt install nginx -y
    print  'Installation completed!'
    logging 'Installation completed!'
else
    print 'NGINX  already installed!'
    logging 'WARNING' 'NGINX  already installed!'
fi
