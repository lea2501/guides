# solve 'unauthorized' phone status
```
$ adb devices
List of devices attached
id         unauthorized

$ rm ~/.android/adbkey

1. Disconnect phone from usb cable
2. Revoke USB Debugging on phone
3. Restart the device
4. Reconnect the device
```

# push files
```
$ adb push <local_pc_files> /storage/emulated/0/Download/
$ adb push ~/Music/main /storage/emulated/0/Music/
$ adb push ~/Music/main/<file> /storage/emulated/0/Music/main/
```

# Pull files
```
$ adb pull /storage/emulated/0/DCIM/OpenCamera/* ~/Downloads/OpenCamera/
$ adb pull /storage/emulated/0/Download/* ~/Downloads/phone_backup/
```
