# Swift for Superpowered (OSX Version)

## Prerequisites

Superpowered SDK: after installation, must make a copy of the `Superpowered` folder to `/usr/local`, so this package can access all headers and libraries via `/usr/local/Superpowered`

## Status
In development, it is not able to build because of [this linker issue](https://github.com/superpoweredSDK/Low-Latency-Android-iOS-Linux-Windows-tvOS-macOS-Interactive-Audio-Platform/issues/481).

## Xcode Setting

As `test.sh`:

`swift test -Xlinker -L/usr/local/Superpowered`

Set Xcode linker path to the above one.

## To do list

All `CLANG_` and `.swift` sources are automatically generated so must be verified or modified manually. 

** CAUTION ** THESE ELEMENTS MIGHT NOT BE GENERATED SO IT MUST BE FIXED BY HAND:

- C++ Class variable members
- definitions
- types and enumerations

