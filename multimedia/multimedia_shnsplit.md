# Resources
```text
https://wiki.archlinux.org/index.php/CUE_Splitting
```

# Installation
```text
To split audio files you need shntool. To split CD images in ISO or raw format you need bchunk.
The WAV format is supported natively for both input and output.
To decode or encode files in other format you need an appropriate decoder.
For example: flac, mac, or wavpack. To tag audio files you need extra tools, such as cuetools, mp3info, or vorbis-tools
```

# Splitting

## To split an audio file accompanied by a CUE sheet into tracks in .wav format, use the shnsplit command
```shell
$ shnsplit -f file.cue file.ape
```

## To split .bin file with CUE sheet into tracks in .wav format
```shell
$ bchunk -v -w file.bin file.cue out
```

## Format for output file names can be specified with the -t option (%n for track number, %t for title)
```shell
$ shnsplit -f file.cue -t "%p - %t" file.ape
```

## shnsplit supports on-the-fly encoding to many lossless formats (see shntool(1) for the full list). For example to encode split tracks in the FLAC format
```shell
$ shnsplit -f file.cue -o flac file.ape
```

## Encoding options, including the encoder itself, can be specified with the -o parameter (see shntool(1) for details)
```shell
$ shnsplit -f file.cue -o "flac flac -s -8 -o %f -" file.ape
```

## The formats supported by shntool and default encoder options can be view with the shntool -a command. If the desired format is not supported by shntool, it can be specified manually. For example, to encode split tracks directly into the Ogg Vorbis format:
```shell
$ shnsplit -f file.cue -o "cust ext=ogg oggenc -b 192 -o %f -" file.ape
```

## Install cuetools shntool flac and run:
```shell
$ cuebreakpoints file.cue | shnsplit -o flac file.flac
```

## Complete command to split with filenames and encode to flac
```shell
$ shnsplit -f file.cue -o "flac flac -s -8 -o %f -" -t "%p - %t" file.flac
```
