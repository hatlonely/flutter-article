FROM cirrusci/flutter:2.2.3 AS build

COPY flutter_article /flutter/flutter_article
WORKDIR /flutter/flutter_article
RUN flutter build web

FROM nginx:1.21.1-alpine

COPY --from=build /flutter/flutter_article/build/web /web
COPY ops/docker/default.conf /etc/nginx/conf.d/default.conf