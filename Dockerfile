FROM debian:stretch

COPY ./sencha/SenchaCmd-7.4.0.39-linux-64-no-jre.zip .

RUN apt-get update && apt-get install -y zip ruby default-jre
RUN unzip ./SenchaCmd-7.4.0.39-linux-64-no-jre.zip
RUN ./SenchaCmd-7.4.0.39-linux-amd64.sh -q && rm SenchaCmd-7.4.0.39-linux-64-no-jre.zip

ENV PATH /root/bin/Sencha/Cmd/7.4.0.39/:$PATH

WORKDIR /app