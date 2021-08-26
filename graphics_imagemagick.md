# Usage

## Convert to format
```
$ convert rose.jpg rose.png
```

## Generate solid color background
```
$ convert -size 1920x1080 canvas:"#303030" background_grey.jpg
```

## Resize image to specific size
```
$ convert dragon.gif -resize 128x112 resize_dragon.gif
```

## Change color ammount
```
$ convert image.jpg +dither -colors 16 -depth 4 image-16.jpg
```

## Add text on image at specific point
```
$ convert temp.jpg -gravity North -pointsize 30 -annotate +0+100 'Love you mom' temp1.jpg
$ convert lena.jpg -fill black -undercolor white -gravity southwest -annotate +0+0 "$filename" -gravity southeast -annotate +0+0 "abc001" lena_label.jpg
```
