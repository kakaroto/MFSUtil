# MFSUtil 

MFS and CFG file manipulation utility

## Description

This tool can be used to manipulate an MFS (ME File System) partition as well as the CFG files stored within.


## Usage

The tool does one operation per run, so for most things, multiple calls will be necessary. See the examples folder for potential uses.

The manipulation of either MFS or CFG files are mutually exclusive.

```
usage: MFSUtil.py [-h] [-o FILE] [-i ID] [-f PATH] [--mode MODE] [--opt OPT]
                  [--uid UID] [--gid GID] [--recursive]
                  [--alignment ALIGNMENT] [--deoptimize] (-m FILE | -c FILE)
                  (-d | -z | -x | -a FILENAME | -r)

MFS and CFG file manipulation utility.

optional arguments:
  -h, --help            show this help message and exit
  -o FILE, --output FILE
                        Output file to write
  -i ID, --file-id ID   ID of the file to manipulate in the MFS file
  -f PATH, --file-path PATH
                        Path of the file to manipulate in the CFG file
  --mode MODE           Mode for file being added to CFG
  --opt OPT             Deplyoment option for file being added to CFG
  --uid UID             User ID for file being added to CFG
  --gid GID             Group ID for file being added to CFG
  --recursive           Recursive deletion for a file path in CFG
  --alignment ALIGNMENT
                        Alignment type for CFG files. (default: 0). 0 :
                        packed. 1 : align all files on chunk start. 2 : align
                        end of files on end of chunk.
  --deoptimize          De-optimize chain sequences when adding a file to MFS.
  -m FILE, --mfs FILE   MFS file to read from
  -c FILE, --cfg FILE   CFG file to read from
  -d, --dump            Dump information about the MFS file, or the CFG file
  -z, --zip             Store the MFS contents to a ZIP file
  -x, --extract         Extract a file from the MFS file, or a file from the
                        CFG file
  -a FILENAME, --add FILENAME
                        Add a file to the MFS file or a file to the CFG file
  -r, --remove          Remove a file from the MFS file, or a file from the
                        CFG file

The default output is to stdout.
Either one of --mfs or --cfg must be specified to indicate on which type of file to work (MFS or CFG).
You can specify one of the mutually exclusive actions : --dump --zip, --extract, --add, --remove.
For the --extract, --add, --remove actions, if --mfs is specified, then --file-id is required, if --cfg is specified, then --file-path is required.
When adding a file to a CFG file, the --mode, --opt, --uid and --gid options can be added.
The --mode option needs to be a string in the form 'dAEIrwxrwxrwx' where unused bits can be either a space or a dash, like --mode '    rwx---rwx' for example.
The --opt option needs to be a string in the form '?!MF' where unused bits can be either a space or a dash.
When adding a directory, both the file path needs to end with a '/' character and the --mode needs to start with 'd'.
```

## Attribution

This tool was written by Youness Alaoui (KaKaRoTo) but inspired by the [parseMFS](https://github.com/ptresearch/parseMFS) tool by Dmitry Sklyarov from Positive Technologies,
with small parts (CRC algorithm) copied as is.

## License

This software is released under the MIT license.
