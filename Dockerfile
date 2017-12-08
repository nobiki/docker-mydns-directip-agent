FROM alpine:3.6

RUN apk add --no-cache curl

RUN echo '0 0 * * 6 NUM=`expr $RANDOM % 604800`;sleep $NUM;curl $MYDNS_URL -X POST -d "$VERSION=`curl --silent ifconfig.co`" -d "MID=$MYDNS_ID" -d "PWD=$MYDNS_PW"' > /var/spool/cron/crontabs/root

ENTRYPOINT ["crond", "-f"]

