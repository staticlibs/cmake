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

set ( CMAKE_BUILD_TYPE "Debug" CACHE STRING "Default build type" )

set ( CMAKE_SYSTEM_NAME Generic )
set ( UNIX 1 CACHE INTERNAL "" )
set ( CMAKE_C_COMPILER gcc )
set ( CMAKE_CXX_COMPILER g++ )
set ( CMAKE_C_FLAGS "-static -static-libgcc -fPIC -DMUSL_LIBC" CACHE INTERNAL "" )
set ( CMAKE_C_FLAGS_DEBUG "-g -O0" CACHE INTERNAL "" )
set ( CMAKE_C_FLAGS_RELEASE "-Os -DNDEBUG" CACHE INTERNAL "" )
set ( CMAKE_CXX_FLAGS "-static -static-libgcc -static-libstdc++ -pthread --std=c++11 -fPIC -Wall -Werror -Wextra -Wno-cpp -DMUSL_LIBC" CACHE INTERNAL "" )
set ( CMAKE_CXX_FLAGS_DEBUG "-g -O0" CACHE INTERNAL "" )
set ( CMAKE_CXX_FLAGS_RELEASE "-Os -DNDEBUG" CACHE INTERNAL "" )
# https://bugs.alpinelinux.org/issues/1579#note-5
set ( CMAKE_EXE_LINKER_FLAGS "-u pthread_create -u pthread_once -u pthread_mutex_lock -u pthread_mutex_unlock -u pthread_join -u pthread_equal -u pthread_detach -u pthread_cond_wait -u pthread_cond_signal -u pthread_cond_destroy -u pthread_cond_broadcast -u pthread_cancel" CACHE INTERNAL "" )
