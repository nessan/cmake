# README

This repository has some modules for the [`CMake`](https://cmake.org/documentation) build system. Each module is entirely stand-alone, so you can copy any file of interest directly into your project and use it like any other [`CMake` module](https://cmake.org/cmake/help/book/mastering-cmake/chapter/Modules.html).

## Available Modules

The modules are in the top-level subdirectory called `modules`.

| Module                     | Description                                                                                                                        |
| -------------------------- | ---------------------------------------------------------------------------------------------------------------------------------- |
| `disable_in_source_builds` | A classic that enforces best practices and prevents any in-source builds.                                                          |
| `compiler_init`            | Sets several commonly used compiler flags, particularly warning flags.                                                             |
| `add_executables`          | Adds targets for lots of small one-file executables.                                                                               |
| `add_archive`              | Adds a target to create an archive of some files/directories.                                                                      |
| `fetch_content`            | A small wrapper around the standard `CMake` module [`FetchContent`](https://cmake.org/cmake/help/latest/module/FetchContent.html). |
| `systematize`              | Treat the header files for an imported library as “system” includes.                                                               |

## Installation

The modules are stand-alone, so you can copy any file of interest directly into your project and use it like any other `CMake` module. By convention, one puts modules like these in a top-level subdirectory called `cmake`.

## Usage

However you get the modules, you use them by letting `CMake` know where they are, including the particular ones of interest, and invoking the corresponding function.

For example, if you have copied the files into a top-level subdirectory `cmake`, then your `CMakeLists.txt` file might include some lines like:

```cmake
list(APPEND CMAKE_MODULE_PATH "${CMAKE_SOURCE_DIR}/cmake")
include(disable_in_source_builds)
disable_in_source_builds()
```

## Documentation

You can read the project's documentation [here](https://nessan.github.io/cmake).
We used the static website generator [Quarto](https://quarto.org) to construct the documentation site.

### Contact

You can contact me by email [here](mailto:nzznfitz+gh@icloud.com).

### Copyright and License

Copyright (c) 2022-present Nessan Fitzmaurice. \
You can use this software under the [MIT license](https://opensource.org/license/mit).
