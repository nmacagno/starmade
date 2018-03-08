FROM openjdk

ADD install-starmade.sh /tmp/
RUN /tmp/install-starmade.sh

ADD boot.sh /bin/boot.sh

COPY server.cfg /starmade/server-example.cfg

VOLUME /starmade/server-database/
VOLUME /starmade/config/

ENTRYPOINT /bin/boot.sh

EXPOSE 4242
