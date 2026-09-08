# OpenBSD - Run firmware updates during an upgrade

1. Start the upgrade and select the shell option at the upgrade prompt.
2. If the disk is encrypted, unlock it with `bioctl`.
3. Mount the required partitions under a temporary mount point.
4. Enter the installed system with `chroot`.
5. Connect to the network and run `fw_update`.
6. Exit the chroot and return to the installer.
7. Enter `upgrade` to continue the normal upgrade process.

Mounting all relevant partitions before entering the chroot makes its environment
closer to that of the installed system.
