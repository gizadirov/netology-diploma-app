FROM nginx:1.24.0

COPY ./default.conf /etc/nginx/conf.d/

COPY ./index.html /usr/share/nginx/html/

RUN chown -R nginx:nginx /usr/share/nginx/html/index.html && \
    chown -R nginx:nginx /etc/nginx/conf.d/default.conf

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
