FROM v2fly/v2fly-core:latest
COPY config.json /etc/v2ray/config.json
RUN sed -i "s/\"port\":.*$/\"port\":$PORT,/" /etc/v2ray/config.json
EXPOSE 80