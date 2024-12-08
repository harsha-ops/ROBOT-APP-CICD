FROM nginx:latest

ENV CATALOGUE_HOST=catalogue \
    USER_HOST=user \
    CART_HOST=cart \
    SHIPPING_HOST=shipping \
    PAYMENT_HOST=payment \
    RATINGS_HOST=ratings \
    INSTANA_SERVICE_NAME=nginx-web

WORKDIR /usr/share/nginx/html

COPY entrypoint.sh /root/

RUN chmod +x /root/entrypoint.sh

ENTRYPOINT ["/root/entrypoint.sh"]

COPY ./static/ /usr/share/nginx/html/

#COPY default.conf.template /etc/nginx/conf.d/default.conf.template

EXPOSE 80

CMD [ "nginx", "-g", "daemon off;" ]