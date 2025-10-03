# Documentation
```text
https://github.com/instaloader/instaloader
https://instaloader.github.io/installation.html
```

# Installation
## linux
```shell
$ pip3 install instaloader
```
## OpenBSD
```shell
$ doas pkg_add python py3-pip
$ python3.xx /usr/local/bin/pip3.xx install instaloader
```

# Upgrade
## Linux
```shell
$ pip3 install --upgrade instaloader
```
## OpenBSD
```shell
$ python3.xx /usr/local/bin/pip3.xx install --upgrade instaloader
```

# Usage
# Download specific post with post id
```shell
$ instaloader --no-video-thumbnails --no-compress-json --sanitize-paths --filename-pattern={profile}_{date_utc}_UTC --dirname-pattern={profile} --comments --quiet -- -[POST_ID]
```

# Download all posts from profile(s)
```shell
$ instaloader PROFILE_NAME [PROFILE_NAME...] --filename-pattern={profile}_{date_utc}_UTC --post-metadata-txt={caption} --storyitem-metadata-txt={caption} --comments --no-video-thumbnails --no-compress-json --sanitize-paths --no-iphone --quiet
```

# Update local copy of that profiles
```shell
$ instaloader --fast-update PROFILE_NAME [PROFILE_NAME...] --filename-pattern={profile}_{date_utc}_UTC --post-metadata-txt={caption} --storyitem-metadata-txt={caption} --comments --no-video-thumbnails --no-compress-json --sanitize-paths --no-iphone --quiet
```
or
```shell
$ instaloader --latest-stamps PROFILE_NAME [PROFILE_NAME...] --filename-pattern={profile}_{date_utc}_UTC --post-metadata-txt={caption} --storyitem-metadata-txt={caption} --comments --no-video-thumbnails --no-compress-json --sanitize-paths --no-iphone --quiet
```

# Rename already downloaded files with default settings
```shell
$ for FILE in *.mp4; do basename_file="$(basename $FILE .mp4)" && json_file="$(echo ${basename_file} | sed 's/UTC_[0-9]*$/UTC/').json" && username=$(cat $json_file | jq ".node.owner.username" | tr -d '"') && mv $FILE ${username}-$FILE; done
$ for FILE in *.jpg; do basename_file="$(basename $FILE .jpg)" && json_file="$(echo ${basename_file} | sed 's/UTC_[0-9]*$/UTC/').json" && username=$(cat $json_file | jq ".node.owner.username" | tr -d '"') && mv $FILE ${username}-$FILE; done
$ for FILE in *.txt; do basename_file="$(basename $FILE .txt)" && json_file="$(echo ${basename_file} | sed 's/UTC_[0-9]*$/UTC/').json" && username=$(cat $json_file | jq ".node.owner.username" | tr -d '"') && mv $FILE ${username}-$FILE; done
$ for FILE in *.json; do basename_file="$(basename $FILE .json)" && json_file="$(echo ${basename_file} | sed 's/UTC_[0-9]*$/UTC/').json" && username=$(cat $json_file | jq ".node.owner.username" | tr -d '"') && mv $FILE ${username}-$FILE; done
```

# Uncompress already downloaded json compressed files
```shell
$ for FILE in *.xz; do xz -d $FILE; done
```