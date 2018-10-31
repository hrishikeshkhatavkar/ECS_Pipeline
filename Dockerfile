FROM golang:alpine as builder

COPY . /code
WORKDIR /code

FROM alpine

COPY --from=builder /code/sample-app /sample-app
CMD /sample-app
