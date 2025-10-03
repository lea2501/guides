# Increase resource limits (old)
```shell
# cp /etc/login.conf /etc/login.conf.bak
# sed -i 's/datasize-cur=768M/datasize-cur=4096M/' /etc/login.conf
# sed -i 's/datasize-max=768M/datasize-max=4096M/' /etc/login.conf
```
