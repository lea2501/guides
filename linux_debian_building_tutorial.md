# Resources
```
https://wiki.debian.org/BuildingTutorial#Introduction
```

# Requirements
```
# apt-get install build-essential fakeroot devscripts
```

# Configure apt
```
# vim /etc/apt/sources.list
add:
deb-src http://httpredir.debian.org/debian unstable main
then:
# apt-get update
```

# Create a working directory
```
$ mkdir -p src/debian/; cd src/debian
$ cd src/debian/
$ apt-get source <package>
$ cd <package_dir>
```
follow build instructions in README file

# Get the build dependencies
```
# apt-get build-dep <package>
```
