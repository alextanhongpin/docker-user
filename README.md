# docker user container

Setting up non-root user for docker images. Only the `/home/nonroot` folder is writable.

```
$ sudo -s
$ echo "secret" > ./secrets.txt
$ chmod 0600 secrets.txt
$ ls -l
$ exit

$ cat ./secrets.txt
Permission denied
```

## docker

```
$ docker run --user $(id -u):$(id -g) ...
```

## docker-compose

```
user: ${UID}:${GID}
```
