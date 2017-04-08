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

# toolchain for linux: https://github.com/staticlibs/arm-cortexa7-linux-gnueabihf

cmake_minimum_required ( VERSION 2.8.12 )
include ( ${CMAKE_CURRENT_LIST_DIR}/toolchains_common.cmake )

set ( CORTEXA7_TOOLCHAIN_DIR "SPECIFY_ME_I_AM_CORTEXA7_TOOLCHAIN_DIR" CACHE STRING "toolchain dir" )
set ( CORTEXA7_TOOLCHAIN_NAME arm-cortexa7-linux-gnueabihf CACHE INTERNAL "" )
set ( CORTEXA7_DEVROOT ${CORTEXA7_TOOLCHAIN_DIR}/${CORTEXA7_TOOLCHAIN_NAME} CACHE INTERNAL "" )

set ( CMAKE_SYSTEM_NAME Linux )
set ( CMAKE_HOST arm-cortexa7-linux-gnueabihf )
set ( CMAKE_SYSROOT ${CORTEXA7_DEVROOT}/sysroot CACHE INTERNAL "" )
set ( CMAKE_C_COMPILER ${CORTEXA7_TOOLCHAIN_DIR}/bin/${CORTEXA7_TOOLCHAIN_NAME}-gcc CACHE INTERNAL "" )
set ( CMAKE_CXX_COMPILER ${CORTEXA7_TOOLCHAIN_DIR}/bin/${CORTEXA7_TOOLCHAIN_NAME}-g++ CACHE INTERNAL "" )
set ( CMAKE_C_FLAGS "-fPIC --sysroot=${CMAKE_SYSROOT}" CACHE INTERNAL "" )
set ( CMAKE_C_FLAGS_DEBUG "-g -O0" CACHE INTERNAL "" )
set ( CMAKE_C_FLAGS_RELEASE "-Os -DNDEBUG" CACHE INTERNAL "" )
set ( CMAKE_CXX_FLAGS "${STATICLIB_COMMON_GPLUSPLUS_FLAGS} -D_GLIBCXX_USE_NANOSLEEP -Wno-psabi --sysroot=${CMAKE_SYSROOT}" CACHE INTERNAL "" )
set ( CMAKE_CXX_FLAGS_DEBUG "-g -O0" CACHE INTERNAL "" )
set ( CMAKE_CXX_FLAGS_RELEASE "-Os -DNDEBUG" CACHE INTERNAL "" )
set ( CMAKE_AR ${CORTEXA7_DEVROOT}/bin/ar CACHE INTERNAL "" )
set ( CMAKE_AS ${CORTEXA7_DEVROOT}/bin/as CACHE INTERNAL "" )
set ( CMAKE_LD ${CORTEXA7_DEVROOT}/bin/ld CACHE INTERNAL "" )
set ( CMAKE_NM ${CORTEXA7_DEVROOT}/bin/nm CACHE INTERNAL "" )
set ( CMAKE_OBJCOPY ${CORTEXA7_DEVROOT}/bin/objcopy CACHE INTERNAL "" )
set ( CMAKE_OBJDUMP ${CORTEXA7_DEVROOT}/bin/objdump CACHE INTERNAL "" )
set ( CMAKE_RANLIB ${CORTEXA7_DEVROOT}/bin/ranlib CACHE INTERNAL "" )
set ( CMAKE_STRIP ${CORTEXA7_DEVROOT}/bin/strip CACHE INTERNAL "" )
