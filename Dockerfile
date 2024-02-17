FROM alpine:3.19.1

RUN apk add --no-cache curl
RUN addgroup -g 65535 autodarts && \
  adduser --shell /sbin/nologin --disabled-password \
  --uid 65535 --ingroup autodarts autodarts

USER autodarts
WORKDIR /home/autodarts

RUN sh <(curl -sL get.autodarts.io) -n -u
RUN mkdir -p ~/.config/autodarts

VOLUME [ ".config/autodarts" ]
EXPOSE 3180

CMD [ ".local/bin/autodarts" ]
