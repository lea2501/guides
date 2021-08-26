# Searching
```
$ gem search mysql --remote gems.rubyforge.org
```

# Installing a particular gem is very simple:
```
sudo gem install [gem]
```

## Don't ask if you want the dependencies to be installed:
```
sudo gem install [gem] --include-dependencies
```

# Outdated
```
$ gem outdated
```

# Updating
```
$ gem update
```

## Update specific gem:
```
gem update [gem]
```

# Clean
This will remove outdated versions of gems that are installed, leaving the new updated version installed:
```
gem clean
```

# Removing
```
$ sudo gem uninstall [gem]
```

# Listing installed gems
```
$ gem list
```
