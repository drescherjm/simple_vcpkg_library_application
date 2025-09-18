# simple\_vcpkg\_library\_application

This repository creates a test application that links to the [simple\_vcpkg\_library](https://github.com/drescherjm/simple_vcpkg_library) which is setup to be built using vcpkg in manifest mode.

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