# Usage script (TODO)
```
while true; do
    # check apm output (apm -l) (apm | head -n 1 | grep -o -E "[0-9]+")
    # if less than 10
    # run shutdown (doas shutdown -hp now)
    sleep 300; 
done
```

start the script in /etc/rc.local at the end of the boot process
