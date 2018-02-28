# Copyright 2015, alex at staticlibs.net
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

cmake_minimum_required ( VERSION 2.8.12 )

# default to Debug
set ( CMAKE_BUILD_TYPE "Debug" CACHE STRING "Default build type" )

set ( CMAKE_SYSTEM_NAME Linux )
set ( CMAKE_C_COMPILER gcc )
set ( CMAKE_CXX_COMPILER g++ )

# CMAKE_C_FLAGS
set ( CMAKE_C_FLAGS_LIST
        -fPIC )
string ( REPLACE ";" " " CMAKE_C_FLAGS "${CMAKE_C_FLAGS_LIST}" )
set ( CMAKE_C_FLAGS "${CMAKE_C_FLAGS}" CACHE INTERNAL "" )

# CMAKE_C_FLAGS_DEBUG
set ( CMAKE_C_FLAGS_DEBUG_LIST
        -g
        -O0 )
string ( REPLACE ";" " " CMAKE_C_FLAGS_DEBUG "${CMAKE_C_FLAGS_DEBUG_LIST}" )
set ( CMAKE_C_FLAGS_DEBUG "${CMAKE_C_FLAGS_DEBUG}" CACHE INTERNAL "" )

# CMAKE_C_FLAGS_RELEASE
set ( CMAKE_C_FLAGS_RELEASE_LIST
        -Os
        -DNDEBUG )
string ( REPLACE ";" " " CMAKE_C_FLAGS_RELEASE "${CMAKE_C_FLAGS_RELEASE_LIST}" )
set ( CMAKE_C_FLAGS_RELEASE "${CMAKE_C_FLAGS_RELEASE}" CACHE INTERNAL "" )

# STATICLIB_CXX_STANDARD
if ( NOT DEFINED STATICLIB_CXX_STANDARD )
    set ( STATICLIB_CXX_STANDARD c++11 CACHE INTERNAL "" )
endif ( )

# CMAKE_CXX_FLAGS
set ( CMAKE_CXX_FLAGS_LIST
        --std=${STATICLIB_CXX_STANDARD}
        -fPIC
        -Wall
        -Werror
        -Wextra
        -fno-strict-overflow
        -fno-strict-aliasing
        -fstack-protector-all )
string ( REPLACE ";" " " CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS_LIST}" )
set ( CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS}" CACHE INTERNAL "" )

# CMAKE_CXX_FLAGS_DEBUG
set ( CMAKE_CXX_FLAGS_DEBUG_LIST
        -g
        -O0 )
string ( REPLACE ";" " " CMAKE_CXX_FLAGS_DEBUG "${CMAKE_CXX_FLAGS_DEBUG_LIST}" )
set ( CMAKE_CXX_FLAGS_DEBUG "${CMAKE_CXX_FLAGS_DEBUG}" CACHE INTERNAL "" )

# CMAKE_CXX_FLAGS_RELEASE
set ( CMAKE_CXX_FLAGS_RELEASE_LIST
        -Os
        -DNDEBUG )
string ( REPLACE ";" " " CMAKE_CXX_FLAGS_RELEASE "${CMAKE_CXX_FLAGS_RELEASE_LIST}" )
set ( CMAKE_CXX_FLAGS_RELEASE "${CMAKE_CXX_FLAGS_RELEASE}" CACHE INTERNAL "" )

# valgrind
if ( EXISTS "/usr/bin/valgrind" )
    set ( CMAKE_MEMORYCHECK_COMMAND "/usr/bin/valgrind" CACHE INTERNAL "" ) 
    set ( CMAKE_MEMORYCHECK_COMMAND_OPTIONS
            --leak-check=yes
            --show-reachable=yes
            --track-origins=yes
            --error-exitcode=42
            --track-fds=yes
            --suppressions=${STATICLIB_CMAKE}/resources/valgrind/openssl_malloc.supp
            CACHE INTERNAL "" )
endif ( )
