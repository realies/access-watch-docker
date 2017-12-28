Typical usage:
```
docker run -d \
--name access-watch \
-v /access-watch/custom.js:/access-watch/config/custom.js:ro \
-v /someapp/logs:/someapp/logs:ro \
-e port=8080 \
-p 8080:8080 \
realies/access-watch
```

Where `/access-watch/custom.js` is an absolute path to an Access Watch configuration file and `/someapp/logs` is a source location of logs.

To learn more on how to configure Access Watch, check the [official documentation](https://access.watch/documentation).
