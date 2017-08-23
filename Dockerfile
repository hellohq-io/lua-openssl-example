FROM alpine:3.6

RUN apk add --update --no-cache --virtual build-dependencies \
   build-base \
   openssl-dev \
   unzip \
   lua-dev \
   luarocks \
&& luarocks-5.1 install luaossl \
&& apk del build-dependencies \
&& apk add --update --no-cache \
   openssl-dev \
   lua

COPY example.lua .

CMD ["lua", "example.lua"]