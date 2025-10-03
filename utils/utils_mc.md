# Set transparent background
Add this to the end of the ~/.config/mc/ini file:
```text
[Colors]
base_color=normal=,default:selected=,:marked=,default:markselect=,:menu=,:menuhot=,:menusel=,:menuhotsel=,:dnormal=,:dfocus=,:dhotnormal=,:dhotfocus=,:input=,:reverse=,:executable=,default:directory=,default:link=,default:device=,default:special=,:core=,:helpnormal=,:helplink=,:helpslink=,:editnormal=,default:
```

# Run command in selected files
```shell
$ for F in %t; do echo "${F} is selected"; done
```
