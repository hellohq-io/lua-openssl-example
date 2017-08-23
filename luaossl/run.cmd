@echo off
docker build --rm --tag luaossl-example .
docker run --rm luaossl-example