# Reinstalling the OS every 2 years

```sh
sudo sed -i 's/bullseye/bookworm/g' /etc/apt/sources.list
sudo apt update && sudo apt full-upgrade && sudo apt autoremove
sudo reboot
```
