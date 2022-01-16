# Install
## Arch Linux
```
# pacman -S tesseract
# pacman -S tesseract-data-spa tesseract-data-eng
```

# Usage
```
$ tesseract -l eng ~/2022-01-16-125046_424x683_scrot.png output_from_ocr
```

## Copy to clipboard
```
$ xclip -sel c < output_from_ocr.txt
```
