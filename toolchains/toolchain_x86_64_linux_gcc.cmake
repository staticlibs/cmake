
cmake_minimum_required ( VERSION 2.8 )

set ( CMAKE_SYSTEM_NAME Linux )
set ( CMAKE_C_COMPILER gcc )
set ( CMAKE_CXX_COMPILER g++ )
set ( CMAKE_C_FLAGS "-fPIC" CACHE STRING "C compiler flags" )
set ( CMAKE_C_FLAGS_DEBUG "-g -O0" CACHE STRING "C compiler debug flags" )
set ( CMAKE_C_FLAGS_RELEASE "-Os" CACHE STRING "C compiler release flags" )
set ( CMAKE_CXX_FLAGS "--std=c++11 -fPIC -fno-omit-frame-pointer -Wall -Werror -Wextra" CACHE STRING "C++ compiler flags" )
set ( CMAKE_CXX_FLAGS_DEBUG "-g -O0" CACHE STRING "C++ compiler debug flags" )
set ( CMAKE_CXX_FLAGS_RELEASE "-Os" CACHE STRING "C++ compiler release flags" )
set ( CMAKE_BUILD_TYPE "Debug" CACHE STRING "default build type" )

