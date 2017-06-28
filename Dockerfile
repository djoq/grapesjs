FROM djoq/network_base

RUN npm i -g n

RUN npm i -g http-server

RUN mkdir -p /app
ARG VERSION=0.0.1
COPY . /app

EXPOSE 8001

#RUN apt-get update
RUN chmod +x /app/run.sh

CMD ["/app/run.sh"]
