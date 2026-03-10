FROM nginx:alpine

RUN rm -rf /usr/share/nginx/html/*

COPY ./src /usr/share/nginx/html


EXPOSE 80

CMD [ "ngnix", "-g", "daemon off;" ] 