# docker user container

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
