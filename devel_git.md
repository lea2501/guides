# Resolving Git merge conflicts (discarding local changes):
## Alter <main> to whatever branch you want to be following
```
$ git fetch origin main
```
## Force the state of the working directory (and the current branch) to a state matching that of a particular commit.
```
$ git reset --hard FETCH_HEAD
```
## Remove files which are not tracked by git (Show files/folder that will be deleted)
```
$ git clean -dn
```
## Remove files which are not tracked by git
```
$ git clean -df
```

# Add local project directory to existing Gitlab project
```
$ cd <local_dir>
$ git init
$ git remote add origin git@[URL]:[USER]/[PROJECT].git
$ git checkout develop
$ git checkout -b [NEW_BRANCH]
$ git add .
$ git commit -m "Commit message"
$ git push --set-upstream origin [NEW_BRANCH]
```
