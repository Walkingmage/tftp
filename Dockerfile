FROM alpine:3.7
LABEL maintainer="Oleg Tsvinev <oleg.tsvinev@gmail.com>"
RUN apk add --no-cache tftp-hpa
EXPOSE 69/udp
ENTRYPOINT ["in.tftpd"]
CMD ["-L", "--secure", "/var/tftpboot"]
