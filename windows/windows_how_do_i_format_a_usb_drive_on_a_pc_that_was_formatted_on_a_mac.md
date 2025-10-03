# Assuming Vista or 7 (think this works on XP, but I'm not sure) and that the disk is not showing up under My Computer at all
```text
1. Connect your disk.
2. Run cmd as an Administrator.
3. Run diskpart.exe. Use ? if you need help in this program.
4. list disk
5. Find the disk that corresponds to your USB disk. select disk n where n is the number of the disk. Confirm that you're using the right disk with detail disk.
6. clean (Warning: This command erases the disk's partition information)
7. create partition primary. No size is needed if you want to use the whole disk
8. active. Marks the partition as potentially bootable.
9. format fs=fat32 quick. You can choose NTFS instead of FAT32 if you want.
10. assign. Assigns the disk a drive letter.
11. exit to quit.
```
