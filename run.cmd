@echo off
docker build --rm --tag lua-openssl-example .
docker run --rm lua-openssl-example