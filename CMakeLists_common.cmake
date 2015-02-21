
cmake_minimum_required ( VERSION 2.8.12 )

# not a project, should be used with 'include'

# override some default options
OPTION ( BUILD_SHARED_LIBS "Build shared libraries." OFF )
OPTION ( CMAKE_INCLUDE_DIRECTORIES_BEFORE "Prefer staticlibs libs over system ones." ON )

# override some default variables
if ( NOT DEFINED STATICLIB_ROOT_BINARY_DIR )
    set ( STATICLIB_ROOT_BINARY_DIR ${PROJECT_BINARY_DIR} CACHE INTERNAL "" )
endif ( )
set ( CMAKE_RUNTIME_OUTPUT_DIRECTORY ${STATICLIB_ROOT_BINARY_DIR}/bin )
set ( CMAKE_LIBRARY_OUTPUT_DIRECTORY ${STATICLIB_ROOT_BINARY_DIR}/lib )
set ( CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${STATICLIB_ROOT_BINARY_DIR}/lib )

# include all macros
file ( GLOB_RECURSE STATICLIB_COMMON_MACROS 
    ${CMAKE_CURRENT_LIST_DIR}/macros/*.cmake )
foreach ( _commonmacro ${STATICLIB_COMMON_MACROS} )
    include ( ${_commonmacro} )
endforeach ( )
