FROM node:13
RUN npm install -g honkit
RUN apt-get update -y && apt-get install calibre -y
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
