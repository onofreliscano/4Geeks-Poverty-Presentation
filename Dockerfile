# Use a lightweight NGINX image to serve static files
FROM nginx:alpine

# Copy exported presentation into NGINX web root
COPY src/export/ /usr/share/nginx/html/

# Cloud Run listens on port 8080
RUN sed -i 's/listen\s\+80;/listen 8080;/' /etc/nginx/conf.d/default.conf

EXPOSE 8080
