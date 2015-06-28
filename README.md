CMake helper scripts for Staticlibs projects
============================================

This project is a part of [Staticlibs](http://staticlibs.net/).

This project contains [CMake](http://cmake.org/) scripts that are used by all 
Staticlibs projects.

Toolchains
----------

`toolchain` directory contains a set of predefined [CMake toolchain files](http://www.cmake.org/cmake/help/v3.0/manual/cmake-toolchains.7.html).
Toolchain must be specified explicitely for the CMake run for every Staticlibs project, example:

    cmake .. -DSTATICLIB_TOOLCHAIN=windows_amd64_msvc

Toolchain specification is mandatory either in command line CMake argument or as a default
value for `STATICLIB_TOOLCHAIN` variable in project configuration.

Default toolchain for all Staticlibs projects is `linux_amd64_gcc`.

Macros
------

`macros` directory contain common CMake macros for dependency tracking, collecting and enabling tests 
with memory check command and docs generation using Doxygen. All macros can be included with this command:

    include ( ${CMAKE_CURRENT_LIST_DIR}/cmake/staticlibs_common.cmake )

All macros are optional.

License information
-------------------

This project is released under the [Apache License 2.0](http://www.apache.org/licenses/LICENSE-2.0)

Changelog
---------

**2015-06-28**

 * version 1.1.0
 * `linux_armeabi_gcc` toolchain added
 * `add_subdirectory` macro now requires path to dependency

**2015-05-17**

 * 1.0.0, initial public version
