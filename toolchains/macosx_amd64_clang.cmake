
cmake_minimum_required ( VERSION 2.8.12 )

set ( CMAKE_BUILD_TYPE "Debug" CACHE STRING "Default build type" )

set ( CMAKE_SYSTEM_NAME Darwin )
set ( CMAKE_C_COMPILER clang )
set ( CMAKE_CXX_COMPILER )
set ( CMAKE_C_FLAGS "-fPIC" CACHE INTERNAL "" )
set ( CMAKE_C_FLAGS_DEBUG "-g -O0" CACHE INTERNAL "" )
set ( CMAKE_C_FLAGS_RELEASE "-Os" CACHE INTERNAL "" )
set ( CMAKE_CXX_FLAGS "--std=c++11 -fPIC -Wall -Werror -Wextra" CACHE INTERNAL "" )
set ( CMAKE_CXX_FLAGS_DEBUG "-g -O0" CACHE INTERNAL "" )
set ( CMAKE_CXX_FLAGS_RELEASE "-Os" CACHE INTERNAL "" )
