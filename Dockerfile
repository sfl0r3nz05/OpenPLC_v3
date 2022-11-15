FROM debian:bullseye-20211201

COPY . /workdir
WORKDIR /workdir
RUN ./install.sh docker

EXPOSE 502
EXPOSE 8080
ENTRYPOINT ["./start_openplc.sh"]
