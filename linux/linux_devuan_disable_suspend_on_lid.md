# Disable suspend on lid close
```text
1. HandleLidSwitch=ignore in /etc/elogind/logind.conf
2. IgnoreLid=true in /etc/UPower/UPower.conf
3. delete /etc/acpi/events/lid-acpi-support
4. reboot
```
