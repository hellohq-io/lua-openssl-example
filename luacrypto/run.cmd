@echo off
docker build --rm --tag luacrypto-example .
docker run --rm luacrypto-example