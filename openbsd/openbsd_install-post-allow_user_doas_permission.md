# Remove asking for doas password for user
```shell
# echo 'permit nopass keepenv YOUR_USERNAME' > /etc/doas.conf
```

# Allow user to run commands as root
```shell
# echo "permit nopass keepenv :wheel" >> /etc/doas.conf
# echo "permit nopass keepenv :wsrc" >> /etc/doas.conf
```

# Allow user mounting of an external USB stick
```shell
# echo "permit nopass [USERNAME] as root cmd mount" >> /etc/doas.conf
# echo "permit nopass [USERNAME] as root cmd umount" >> /etc/doas.conf
```

# Normal user configuration
## Add normal user to the wheel and wsrc groups
```shell
# user mod -G wheel [USERNAME]
# user mod -G wsrc [USERNAME]
```

## Make sure you belong to the class (not group) staff:
```shell
# user mod -L staff [USERNAME]
```
