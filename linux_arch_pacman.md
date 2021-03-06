# When installing a package, it is possible to force its installation reason to dependency with: 
```
# pacman -S --asdeps package_name
```

# The list of explicitly-installed packages can be shown with pacman -Qe, while the complementary list of dependencies can be shown with pacman -Qd. 

# To change the installation reason of an already installed package, execute
```
# pacman -D --asdeps package_name
```
Use --asexplicit to do the opposite operation. 

# Cleaning the package cache
```
# pacman -Sc
```

# Querying package databases

## pacman queries the local package database with the -Q flag; see:
```
# pacman -Q --help
```

## And queries the sync databases with the -S flag; see:
```
# pacman -S --help
```

# pacman can search for packages in the database, searching both in packages' names and descriptions:
```
# pacman -Ss string1 string2 ...
```

# Sometimes, -s's builtin ERE can cause a lot of unwanted results, so it has to be limited to match the package name only; not the description nor any other field:
```
  # pacman -Ss '^vim-'
```

# To search for already installed packages:
```
# pacman -Qs string1 string2 ...
```

# To display extensive information about a given package:
```
# pacman -Si package_name
```

# For locally installed packages:
```
# pacman -Qi package_name
```

# Passing two -i flags will also display the list of backup files and their modification states:
```
# pacman -Qii package_name
```

# To retrieve a list of the files installed by a package:
```
# pacman -Ql package_name
```

For packages not installed, use pkgfile.

# To verify the presence of the files installed by a package:
```
# pacman -Qk package_name
```

Passing the k flag twice will perform a more thorough check.

# One can also query the database to know which package a file in the file system belongs to:
```
# pacman -Qo /path/to/file_name
```

# To list all packages no longer required as dependencies (orphans):
```
# pacman -Qdt
```

# To list all packages explicitly installed and not required as dependencies:
```
# pacman -Qet
```

# To list a dependency tree of a package:
```
$ pactree package_name
```

# To list all the packages recursively depending on an installed package, use whoneeds from pkgtoolsAUR:
```
$ whoneeds package_name
```

# or the reverse flag to pactree:
```
$ pactree -r package_name
```

# To remove package completely
```
# pacman -Rsnc package
```

# Refresh pacman keyring
```
# pacman-key --refresh-keys
```

# Other actions
```
$ pacman -Qqet --> lists all explicitly installed packages
$ pacman -Qqdt --> lists all packages which are orphans
$ pacman -Qqn --> lists all 'native' (exclude AUR) installed packages
$ pacman -Qqm --> lists all 'foreign' (include AUR) installed packages
```

# List all orphans
```
# pacman -Qdt
```

# Remove all orphans
```
# pacman -Rsn $(pacman -Qdtq)
```
