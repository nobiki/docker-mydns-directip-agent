# docker-mydns-directip-agent

Notify ipaddress to [MyDNS](https://www.mydns.jp) for Weekly. (UnOfficial)

> [MyDNSのIP通知をdockerコンテナでやるやつ作った](https://7me.oji.0j0.jp/2017/mydns-docker-directip-agent.html)

#### Usage

Use `docker-compose`

First, set the authentication information in docker-compose.yml

```
 - MYDNS_ID=[YOUR_MID]
 - MYDNS_PW=[YOUR_PASSWORD]
```

```
$ docker-compose up -d
```
