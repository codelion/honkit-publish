FROM node:13
RUN npm install -g honkit
RUN wget -nv -O- https://download.calibre-ebook.com/linux-installer.sh | sh /dev/stdin
# RUN apt-get update -y && apt-get install calibre -y
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
