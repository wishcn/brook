FROM alpine:3.10 AS dist

# /usr/bin/brook
RUN wget -O /usr/bin/brook https://github.com/txthinking/brook/releases/download/v20190601/brook \
    && chmod +x /usr/bin/brook
    
ENV ARGS="server -l :6060 -p password"

CMD /usr/bin/brook ${ARGS}
