# Concat jpg and pdf files to single pdf file
## Convert jpg to pdf files
```shell
$ for FILE in *.jpg; do convert "$FILE" "${FILE%.*}".pdf; done
```

## Concat all pdf files
```shell
$ qpdf --empty --pages pdf1 pdf2 pdf3 -- pdf-final.pdf
```

## Reduce pdf file size
```shell
$ ps2pdf pdf-final.pdf pdf-final_.pdf
```

## Reduce pdf file size
```shell
$ gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/screen -dDownsampleColorImages=true -dColorImageResolution=120 -dDownsampleGrayImages=true -dGrayImageResolution=120 -dDownsampleMonoImages=true -dMonoImageResolution=120 -dNOPAUSE -dQUIET -dBATCH -sOutputFile=output.pdf input.pdf
$ gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/ebook -dDownsampleColorImages=true -dColorImageResolution=120 -dDownsampleGrayImages=true -dGrayImageResolution=120 -dDownsampleMonoImages=true -dMonoImageResolution=120 -dNOPAUSE -dQUIET -dBATCH -sOutputFile=output.pdf input.pdf
$ gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/printer -dDownsampleColorImages=true -dColorImageResolution=120 -dDownsampleGrayImages=true -dGrayImageResolution=120 -dDownsampleMonoImages=true -dMonoImageResolution=120 -dNOPAUSE -dQUIET -dBATCH -sOutputFile=output.pdf input.pdf
```