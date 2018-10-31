FROM golang:alpine as builder

COPY . /code
WORKDIR /code

FROM alpine

