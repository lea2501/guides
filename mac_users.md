# Create user from command line
```
# . /etc/rc.common
# dscl . create /Users/[USERNAME]
# dscl . create /Users/[USERNAME] RealName "User name"
# dscl . create /Users/[USERNAME] hint "Password Hint"
# dscl . create /Users/[USERNAME] picture "/Path/To/Picture.png"
# dscl . passwd /Users/[USERNAME] [PASSWORD]
# dscl . -list /Users UniqueID | awk '{print $2}' | sort -n | tail -1 // get UniqueID of last user (add 1)
# dscl . create /Users/[USERNAME] UniqueID [UNIQUE_ID]
# dscl . create /Users/[USERNAME] PrimaryGroupID 80 // admin user
or
# dscl . create /Users/[USERNAME] PrimaryGroupID 20 // normal user
# dscl . create /Users/[USERNAME] UserShell /bin/bash
# dscl . create /Users/[USERNAME] NFSHomeDirectory /Users/[USERNAME]
# createhomedir -u [USERNAME]
```

# Add user to wheel group
```
# dseditgroup -o edit -a [USERNAME] -t user wheel
```
