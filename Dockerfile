FROM alpine:3.6

RUN apk add --no-cache curl

RUN echo '*/1 * * * * NUM=`expr $RANDOM % 3600`;echo $NUM;echo $MYDNS_URL -X POST -d "$VERSION=`curl --silent ifconfig.co`" -d "MID=$MYDNS_ID" -d "PWD=$MYDNS_PW"' > /var/spool/cron/crontabs/root

ENTRYPOINT ["crond", "-f"]

