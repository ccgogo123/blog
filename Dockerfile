FROM node:8.15.0-alpine
MAINTAINER Chris Huang, xhhuangxi@gmail.com

WORKDIR /blog

COPY blog .

# install hexo
RUN npm install hexo-cli -g \
    && npm install

# hexo default port
EXPOSE 4000

CMD ["hexo", "server"]
