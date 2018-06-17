# Swift for Superpowered (OSX Version)

## Prerequisites

Superpowered SDK: after installation, must make a copy of the `Superpowered` folder to `/usr/local`, so this package can access all headers and libraries via `/usr/local/Superpowered`

## Status
In development.

## Xcode Setting

As `test.sh`:

```
swift test -Xlinker -L/usr/local/Superpowered \
-Xlinker -framework -Xlinker CoreAudio \
-Xlinker -framework -Xlinker CoreMedia \
-Xlinker -framework -Xlinker AudioToolbox \
-Xlinker -framework -Xlinker AVFoundation
```

Set Xcode linker path to the above one.

## To do list

All `CLANG_` and `.swift` sources are automatically generated so must be verified or modified manually. 

** CAUTION ** THESE ELEMENTS MIGHT NOT BE GENERATED SO IT MUST BE FIXED BY HAND:

- C++ Class variable members
- definitions
- types and enumerations

