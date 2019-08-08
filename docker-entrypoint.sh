#!/bin/sh
set -e
cat <<EOF > /etc/nginx/conf.d/nginx.conf 
events {
    worker_connections  1024;
}
http{	
server {
    listen       ${PORT:-80};
    server_name  ${IP:-0.0.0.0};
    root   /web/html;
    index	index.html;
}
}
EOF

exec "$@"
