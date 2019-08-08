FROM nginx:latest
LABEL author="linux.ora.nginx"
COPY index.html /web/html/
COPY docker-entrypoint.sh /etc/nginx/
#EXPOSE 80/TCP
CMD ["nginx","-c","/etc/nginx/conf.d/nginx.conf","-g","daemon off;"]
ENTRYPOINT ["/etc/nginx/docker-entrypoint.sh"]
