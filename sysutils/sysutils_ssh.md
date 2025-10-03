# sshfs
## Windows server
```shell
> net use m: \\192.168.10.53\media /USER:lchescotta /PERSISTENT:yes
```

## Client
```shell
$ sshfs [USERNAME]@[IP_ADDR]:[PATH_ORIG] [PATH_DEST]
```

# ssh
## access remote machine's mic via SSH
```shell
$ ssh [USERNAME]@[IP_ADDR] 'dd bs=1k if=/dev/audio' > /dev/audio
```

## Add ssh keys to server
```shell
$ cat ~/.ssh/id_rsa.pub | ssh user@hostname 'cat >> .ssh/authorized_keys'
```

## Connect with ssh key instead of password
```shell
$ ssh -i ~/.ssh/id_rsa user@hostname
```
