FROM nginx:1.15.8

RUN rm -f /etc/nginx/conf.d/*
ADD docker/nginx/nginx.conf /etc/nginx/nginx.conf

CMD /usr/sbin/nginx -g 'daemon off;' -c /etc/nginx/nginx.conf