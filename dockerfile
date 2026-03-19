FROM nginx:alpine

# Copy nginx conf
COPY ./nginx.conf /etc/nginx/conf.d/default.conf

# Remove default greeting nginx page
RUN rm -rf /usr/share/nginx/html/*

# Copy the source site files
COPY ./src /usr/share/nginx/html


EXPOSE 80 443

CMD ["nginx", "-g", "daemon off;"]