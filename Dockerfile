## Run the application
FROM nginx:alpine

COPY /src /usr/share/nginx/html
COPY /build/contracts /usr/share/nginx/html/contracts