FROM alpine:3.6

RUN apk add --update --no-cache --virtual .build-deps \
   build-base \
   openssl-dev \
   lua-dev \
   luarocks \
   unzip \
&& luarocks-5.1 install luaossl \
&& apk del .build-deps \
&& apk add --update --no-cache \
   openssl \
   lua

COPY example.lua .

CMD ["lua", "example.lua"]