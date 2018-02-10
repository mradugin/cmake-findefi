# cmake-findefi
[![Build Status](https://travis-ci.org/mradugin/cmake-findefi.svg?branch=master)](https://travis-ci.org/mradugin/cmake-findefi)

This module finds the gnuefi and efi libraries on the system.
Additionally finds linker script and crt objects that corresponds to current
platform (CMAKE_SYSTEM_PROCESSOR), provides create_efi_image() function
to geneate resulting efi image.

## Installation

Add path where Findefi.cmake is located to CMAKE_MODULE_PATH variable.
For example, if Findefi.cmake is located next to CMakeLists.txt file, use:

```
set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} ${CMAKE_SOURCE_DIR})
```

CMAKE_MODULE_PATH should be set before calling find_package().
See example project.

For more information on find package modules see:
https://cmake.org/cmake/help/latest/command/find_package.html

## Usage

The following will produce hello<arch>.efi image:

```
find_package(efi REQUIRED)
add_library(hello_efi SHARED main.c)
target_link_libraries(hello_efi efi)
create_efi_image(hello_efi hello)
```
