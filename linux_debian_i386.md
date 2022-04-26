# Add support for 32 bit applications
```
# dpkg --add-architecture i386
```

## Add 32 bit dependencies for desired application
```
# apt-get install libx11-6:i386
# apt-get install libgl1:i386
# apt-get install libopenal1:i386
...
```
