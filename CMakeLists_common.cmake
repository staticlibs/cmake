
cmake_minimum_required ( VERSION 2.8.3 )

# not a project, should be used with 'include'

OPTION ( BUILD_SHARED_LIBS "Build shared libraries." OFF )
OPTION ( CMAKE_INCLUDE_DIRECTORIES_BEFORE "Prefer staticlibs libs over system ones." ON )

# include all macros
file ( GLOB_RECURSE STATICLIB_COMMON_MACROS 
    ${CMAKE_CURRENT_LIST_DIR}/macros/*.cmake )
foreach ( _commonmacro ${STATICLIB_COMMON_MACROS} )
    include ( ${_commonmacro} )
endforeach ( )
