# Copyright 2016, alex at staticlibs.net
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

# toolchain for linux: https://github.com/staticlibs/android-ndk-r9d-x86-linux-android-4.8

cmake_minimum_required ( VERSION 2.8.12 )
include ( ${CMAKE_CURRENT_LIST_DIR}/toolchains_common.cmake )

set ( ANDROID_TOOLCHAIN_DIR "SPECIFY_ME_I_AM_ANDROID_TOOLCHAIN_DIR" CACHE STRING "toolchain dir" )
set ( ANDROID_TOOLCHAIN_NAME i686-linux-android CACHE INTERNAL "" )
set ( ANDROID_DEVROOT ${ANDROID_TOOLCHAIN_DIR}/${ANDROID_TOOLCHAIN_NAME} CACHE INTERNAL "" )

set ( CMAKE_SYSTEM_NAME Generic )
set ( UNIX 1 CACHE INTERNAL "" )
set ( CMAKE_HOST i686-linux-android )
set ( CMAKE_SYSROOT ${ANDROID_TOOLCHAIN_DIR}/sysroot CACHE INTERNAL "" )
set ( CMAKE_C_COMPILER ${ANDROID_DEVROOT}/bin/gcc CACHE INTERNAL "" )
set ( CMAKE_CXX_COMPILER ${ANDROID_DEVROOT}/bin/g++ CACHE INTERNAL "" )
set ( CMAKE_C_FLAGS "-fPIC -DANDROID -mandroid --sysroot=${CMAKE_SYSROOT}" CACHE INTERNAL "" )
set ( CMAKE_C_FLAGS_DEBUG "-g -O0" CACHE INTERNAL "" )
set ( CMAKE_C_FLAGS_RELEASE "-Os -DNDEBUG" CACHE INTERNAL "" )
set ( CMAKE_CXX_FLAGS "${STATICLIB_COMMON_GPLUSPLUS_FLAGS} -DANDROID -mandroid --sysroot=${CMAKE_SYSROOT}" CACHE INTERNAL "" )
set ( CMAKE_CXX_FLAGS_DEBUG "-g -O0" CACHE INTERNAL "" )
set ( CMAKE_CXX_FLAGS_RELEASE "-Os -DNDEBUG" CACHE INTERNAL "" )
set ( CMAKE_EXE_LINKER_FLAGS "-DANDROID -mandroid" CACHE INTERNAL "" )
#set ( CMAKE_SHARED_LIBRARY_LINK_C_FLAGS "" CACHE STRING "disable linker shared flags" )
#set ( CMAKE_SHARED_LIBRARY_LINK_CXX_FLAGS "" CACHE STRING "disable linker flags" )
set ( CMAKE_AR ${ANDROID_DEVROOT}/bin/ar CACHE INTERNAL "" )
set ( CMAKE_AS ${ANDROID_DEVROOT}/bin/as CACHE INTERNAL "" )
set ( CMAKE_LD ${ANDROID_DEVROOT}/bin/ld CACHE INTERNAL "" )
set ( CMAKE_NM ${ANDROID_DEVROOT}/bin/nm CACHE INTERNAL "" )
set ( CMAKE_OBJCOPY ${ANDROID_DEVROOT}/bin/objcopy CACHE INTERNAL "" )
set ( CMAKE_OBJDUMP ${ANDROID_DEVROOT}/bin/objdump CACHE INTERNAL "" )
set ( CMAKE_RANLIB ${ANDROID_DEVROOT}/bin/ranlib CACHE INTERNAL "" )
set ( CMAKE_STRIP ${ANDROID_DEVROOT}/bin/strip CACHE INTERNAL "" )
