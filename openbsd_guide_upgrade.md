When you boot a bootloader from an encrypted disk, the bootloader decrypts the softraid drive in order to locate, and load the kernel before passing control to it. The decryption key is passed to the kernel, so that it can address the drive via softraid(4).

The only plaintext sectors on an FDE drive are MBR/GPT, and the bootloader. The kernel uses the softraid(4) driver to conduct I/O.

The RAMDISK kernel (bsd.rd) includes the softraid(4) driver.

# Step 0. Read the documentation about upgrade process of the release version
```
https://www.openbsd.org/faq/upgradeXX.html
```

# Step 1. place the new bsd.rd kernel in the root directory. It's an encrypted directory, because the entire drive (except as above) is encrypted.
```
# cp bsd.rd /new.bsd.rd
```

# Step 2. reboot the system
```
# reboot
```

# Step 3. provide your passphrase or your keydisk to the bootloader.
```
# passphrase: 
```

# Step 4. tell the bootloader to load the new bsd.rd kernel. The kernel will assign an sd drive number to the decrypted disk.
```
boot> new.bsd.rd
```

# Step 5. Run the upgrade script.

# Step 6. Give the script the sd drive number to upgrade.

# Step 7. Run the sysclean script
