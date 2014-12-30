
cmake_minimum_required ( VERSION 2.8 )

set ( CMAKE_SYSTEM_NAME Linux )
set ( CMAKE_CXX_COMPILER "g++" )
set ( CMAKE_CXX_FLAGS "-Os --std=c++11 -Wall -Werror -Wextra" CACHE STRING "compiler flags" )
set ( CMAKE_CXX_FLAGS_DEBUG "-g -O0" CACHE STRING "compiler debug flags" )
set ( CMAKE_CXX_FLAGS_RELEASE "-Os" CACHE STRING "compiler release flags" )
set ( CMAKE_BUILD_TYPE "Debug" CACHE STRING "default build type" )

