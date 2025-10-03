# Install or update firmware for all drivers
```shell
# fw_update -a
```

# Delete firmware for driver. If used without parameters, delete all firmware that is not required by a driver. If used in conjunction with -a, delete firmware for all drivers
```shell
# fw_update -d
```

# Display information about firmware which is installed or missing
```shell
# fw_update -i
```

# Dry run (-n)
```shell
# fw_update -<action>n
```

# Use the firmware found at path, being either a local directory or a URL
```shell
# fw_update -p path
```
