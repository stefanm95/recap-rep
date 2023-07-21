FROM nginx:latest

COPY devops.html /usr/share/nginx/html/
COPY get_disk_space.sh /usr/local/bin/

RUN chmod +x /usr/local/bin/get_disk_space.sh

