FROM cirrusci/flutter:2.5.3 AS build

COPY flutter_article /flutter/flutter_article
WORKDIR /flutter/flutter_article
RUN flutter build web --dart-define=FLUTTER_WEB_CANVASKIT_URL=https://k8s.minio.hatlonely.com/npm/canvaskit-wasm@0.28.1/bin/

FROM nginx:1.21.1-alpine

COPY --from=build /flutter/flutter_article/build/web /web
COPY ops/docker/default.conf /etc/nginx/conf.d/default.conf
