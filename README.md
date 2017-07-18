# Docker-Dokuwiki

Dokuwiki docker based on apache2 and php 7.0.

Last update : dokuwiki 2017-02-19b (Actual stable)

Quick install :
```
  docker run -p 8080:80 malexis/dokuwiki
```
then : http://monip:8080/

Docker-compose :
```
version: '3'
services:
  dokuwiki:
    image: malexis/dokuwiki
    container_name: dokuwiki
    ports:
    -  "8080:80"
    volumes:
    -  /your/volume/for/template:/var/www/html/lib/tpl:rw
    -  /your/volume/for/plugins:/var/www/html/lib/plugins:rw
    -  /your/volume/for/data:/var/www/html/data:rw
    -  /your/volume/for/conf:/var/www/html/conf:rw
```

If you'r volumes are empty at "docker-compose up" the dokuwiki will' not work then run :
  docker exec dokuwiki start

Enjoy ! 
