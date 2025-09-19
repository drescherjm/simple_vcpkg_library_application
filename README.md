# simple\_vcpkg\_library\_application

## Purpose

This repository, along with [simple_vcpkg_library](https://github.com/drescherjm/simple_vcpkg_library), provides a minimal C++ library example that demonstrates how to make your own libraries consumable via vcpkg in manifest mode.

The test application in this repository automatically downloads, compiles, and links against *simple_vcpkg_library* using vcpkg's manifest workflow.
 
# Project Design Notes

1. vcpkg.json is used to setup the dependency to the library created in the simple\_vcpkg\_library.
```json
   {
     "name": "simple-vcpkg-library-application",
     "version-string": "0.1.0",
     "dependencies": [
       "simple-vcpkg-library"
     ]
   }
```
2. vcpkg-configuration.json is used to specify where the local port overlay that contains the portfiles needed for the library.
```
{
  "overlay-ports": [
    "vcpkg/ports"
  ],
  "overlay-triplets": [
    "vcpkg/triplets"
  ]
}
```
Although I defined a location for overlay-triplets it's not currently used in this example.
