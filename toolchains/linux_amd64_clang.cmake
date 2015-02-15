
cmake_minimum_required ( VERSION 2.8.12 )

set ( CMAKE_BUILD_TYPE "Debug" CACHE STRING "Default build type" )

set ( CMAKE_SYSTEM_NAME Linux )
set ( CMAKE_C_COMPILER clang )
set ( CMAKE_CXX_COMPILER clang++ )
set ( CMAKE_C_FLAGS "-fPIC" CACHE INTERNAL "" )
set ( CMAKE_C_FLAGS_DEBUG "-g -O0" CACHE INTERNAL "" )
set ( CMAKE_C_FLAGS_RELEASE "-Os" CACHE INTERNAL "" )
set ( CMAKE_CXX_FLAGS "--std=c++11 -fPIC -Wall -Werror -Wextra" CACHE INTERNAL "" )
set ( CMAKE_CXX_FLAGS_DEBUG "-g -O0" CACHE INTERNAL "" )
set ( CMAKE_CXX_FLAGS_RELEASE "-Os" CACHE INTERNAL "" )

if ( EXISTS "/usr/bin/valgrind" )
    set ( CMAKE_MEMORYCHECK_COMMAND "/usr/bin/valgrind" CACHE INTERNAL "" ) 
    set ( CMAKE_MEMORYCHECK_COMMAND_OPTIONS
            --leak-check=yes
            --show-reachable=yes
            --track-origins=yes
            --error-exitcode=42
            --track-fds=yes
            CACHE INTERNAL "" )
endif ( )
