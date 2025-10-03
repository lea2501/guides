# Resources
```text

```

# Fix images not loading on amd gpu
It seems to be a known issue and workaround would be purging the GPUCache
```shell
$ rm -rf /home/lea/.config/chromium/Default/GPUCache/
```
Relates to
https://bugs.chromium.org/p/chromium/issues/detail?id=1442633
