#!/bin/bash

print(){
    echo '-----------------------------------------------'
    echo $1
    echo '-----------------------------------------------'
}

apt update -y
# Install ngnix
if [ $( apt list --installed -a  nginx | egrep -i '^nginx' | wc -l ) -eq 0 ]; then
    print 'Instalation of NGINX started...'
    apt install nginx -y
    print  'Installation completed!'
else
    print 'NGINX  already installed!'
fi
