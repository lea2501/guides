# solve 'unauthorized' phone status
```shell
$ adb devices
List of devices attached
id         unauthorized

$ rm ~/.android/adbkey
```

```text
1. Disconnect phone from usb cable
2. Revoke USB Debugging on phone
3. Restart the device
4. Reconnect the device
```

# push files
```shell
$ adb push <local_pc_files> /storage/emulated/0/Download/
$ adb push ~/Music/main /storage/emulated/0/Music/
$ adb push ~/Music/main/<file> /storage/emulated/0/Music/main/
```

# Pull files
```shell
$ adb pull /storage/emulated/0/DCIM/OpenCamera/* ~/Downloads/OpenCamera/
$ adb pull /storage/emulated/0/Download/* ~/Downloads/phone_backup/
```
