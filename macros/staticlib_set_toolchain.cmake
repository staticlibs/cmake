
cmake_minimum_required ( VERSION 2.8 )

macro (staticlib_set_toolchain _parentdir _toolchain )
    set ( CMAKE_TOOLCHAIN_FILE
        ${_parentdir}/staticlib_util_cmake/toolchains/toolchain_${_toolchain}.cmake 
        CACHE INTERNAL "toolchain file" )
    include ( ${_parentdir}/staticlib_util_cmake/memchecks/memcheck_${_toolchain}.cmake 
        OPTIONAL )
endmacro ( )
