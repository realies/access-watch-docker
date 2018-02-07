## Introduction

Access Watch is a flexible processor that helps operators analyse the real web traffic activity reaching their infrastructure.

Access Watch is built as a real-time streaming processor handling logs from inputs of any type (CDN, Load Balancer, Reverse Proxy, Web Server, Application) using any protocol (rsyslog, Log shippers, HTTP API, HTTP polling, Websocket).

Access Watch is currently in **beta** and is already covering multiple great use cases.

## Typical Usage
```
docker run -d --name access-watch \
-v ~/nginx.js:/config.js:ro \
-v /var/log/nginx:/logs:ro \
-e port=8080 -p 8080:8080 \
realies/access-watch
```
Where `~/nginx.js` is a valid Access Watch configuration file and `/var/log/nginx` is a logs source location.

## Tutorials

Check our first tutorials explaining how to configure Access Watch in common scenarios:

* [Monitor web traffic with syslog input from Nginx](https://access.watch/documentation/nginx)
* [Monitor web traffic with syslog input from Apache](https://access.watch/documentation/apache)
* [Monitor web traffic with polling input from Elasticsearch](https://access.watch/documentation/elasticsearch)
* [Monitor web traffic with input from Node/Express middleware](https://access.watch/documentation/express)
