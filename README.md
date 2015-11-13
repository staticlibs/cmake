CMake helper scripts for Staticlibs projects
============================================

This project is a part of [Staticlibs](http://staticlibs.net/).

This project contains [CMake](http://cmake.org/) scripts that can be used with Staticlibs projects.

Toolchains
----------

`toolchain` directory contains a set of predefined [CMake toolchain files](http://www.cmake.org/cmake/help/v3.0/manual/cmake-toolchains.7.html).
See [StaticlibsToolchains](https://github.com/staticlibs/wiki/wiki/StaticlibsToolchains) for more information
about toolchains.

Macros
------

`macros` directory contain common CMake macros for dependency tracking, collecting and enabling tests 
with memory check command and docs generation using Doxygen. All macros can be included with this command:

    include ( some/path/cmake/staticlibs_common.cmake )

See [StaticlibsDependencies](https://github.com/staticlibs/wiki/wiki/StaticlibsDependencies) for more
information about `staticlib_add_subdirectory` macro.

See [PkgConfig](https://github.com/staticlibs/wiki/wiki/PkgConfig) for more information about
`staticlib_pkg_check_modules` macro.

Doxygen
-------

`doxygen` directory contains a template for `Doxyfile` that is used to generate API documentation
for Staticlibs projects.

Crosstool
---------

`crosstool` directory contains configuration files for the [crosstool-NG](http://crosstool-ng.org/)
toolchain building utility.

Bin
---

`bin` directory contains auxiliary bash and batch scripts to be used with CMake projects.

License information
-------------------

This project is released under the [Apache License 2.0](http://www.apache.org/licenses/LICENSE-2.0)

Changelog
---------

**2015-11-13**

 * version 1.3.1
 * unify cmake lib and exec directory to `bin`

**2015-10-20**

 * version 1.3.0
 * `pkg-config` support
 * `add_subdirectory` macro changed

**2015-07-05**

 * version 1.2.0
 * hardfloat toolchain for Raspberry
 * `NDEBUG` for all `Release` builds
 * `creset` script for Windows

**2015-06-30**

 * version 1.1.0
 * `linux_armcortexa7_gcc` toolchain added
 * `add_subdirectory` macro now requires path to dependency

**2015-05-17**

 * 1.0.0, initial public version
