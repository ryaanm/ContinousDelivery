FROM nginx:1.17.1-alpine
COPY ./dist/test /usr/share/nginx/html
EXPOSE 4201
CMD ["nginx", "-g", "daemon off;"]
