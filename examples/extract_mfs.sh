#!/bin/sh

FILENAME=$1
MFS_START=0xa8000
MFS_SIZE=0x64000

ifdtool  -x $FILENAME

dd if=flashregion_2_intel_me.bin of=MFS.part bs=1 skip=$(($MFS_START)) count=$(($MFS_SIZE))
../MFSUtil.py -m MFS.part -x -i 7 -o 7.cfg
../MFSUtil.py -m MFS.part -x -i 6 -o 6.cfg
../MFSUtil.py -m MFS.part -d > MFS.dump

