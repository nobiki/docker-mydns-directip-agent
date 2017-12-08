# docker-mydns-directip-agent

Notify ipaddress to [MyDNS](https://www.mydns.jp) for Weekly. (UnOfficial)

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
