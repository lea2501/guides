# Searching
```shell
$ gem search mysql --remote gems.rubyforge.org
```

# Installing a particular gem is very simple:
```shell
sudo gem install [gem]
```

## Don't ask if you want the dependencies to be installed:
```shell
sudo gem install [gem] --include-dependencies
```

# Outdated
```shell
$ gem outdated
```

# Update
```shell
$ gem update
```

## Update specific gem:
```shell
gem update [gem]
```

# Clean
This will remove outdated versions of gems that are installed, leaving the new updated version installed:
```shell
gem clean
```

# Remove
```shell
$ sudo gem uninstall [gem]
```

# Listing installed gems
```shell
$ gem list
```
