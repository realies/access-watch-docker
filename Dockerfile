from alpine:latest
maintainer realies <docker@reali.es>
env commit af666f2
run apk update && apk upgrade && \
 apk add --virtual build-dependencies git && \
 apk add nodejs && \
 git clone -n https://github.com/access-watch/access-watch.git && \
 cd /access-watch && \
 git checkout ${commit} && \
 npm install && \
 echo "PORT=\${port:-3000} npm start config/custom" > /init.sh && \
 chmod +x /init.sh && \
 apk del build-dependencies && \
 rm -rf /var/cache/apk/*
workdir /access-watch
entrypoint /init.sh
