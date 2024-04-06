FROM nginx:alpine

COPY ./default.conf /etc/nginx/conf.d/

RUN chown -R nginx:nginx /etc/nginx/conf.d/default.conf


COPY ./index.html /usr/share/nginx/html/

RUN chown -R nginx:nginx /usr/share/nginx/html/index.html


EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
