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

# toolchain for linux: https://github.com/staticlibs/armv6-rpi-linux-gnueabi

cmake_minimum_required ( VERSION 2.8.12 )

set ( CMAKE_BUILD_TYPE "Debug" CACHE STRING "Default build type" )

set ( RASPBERRY_TOOLCHAIN_DIR "SPECIFY_ME_I_AM_RASPBERRY_TOOLCHAIN_DIR" CACHE STRING "toolchain dir" )
set ( RASPBERRY_TOOLCHAIN_NAME armv6-rpi-linux-gnueabi CACHE INTERNAL "" )
set ( RASPBERRY_DEVROOT ${RASPBERRY_TOOLCHAIN_DIR}/${RASPBERRY_TOOLCHAIN_NAME} CACHE INTERNAL "" )

set ( CMAKE_SYSTEM_NAME Linux )
set ( CMAKE_HOST armv6-rpi-linux-gnueabi )
set ( CMAKE_SYSROOT ${RASPBERRY_DEVROOT}/sysroot CACHE INTERNAL "" )
set ( CMAKE_C_COMPILER ${RASPBERRY_TOOLCHAIN_DIR}/bin/${RASPBERRY_TOOLCHAIN_NAME}-gcc CACHE INTERNAL "" )
set ( CMAKE_CXX_COMPILER ${RASPBERRY_TOOLCHAIN_DIR}/bin/${RASPBERRY_TOOLCHAIN_NAME}-g++ CACHE INTERNAL "" )
set ( CMAKE_C_FLAGS "-fPIC --sysroot=${CMAKE_SYSROOT}" CACHE INTERNAL "" )
set ( CMAKE_C_FLAGS_DEBUG "-g -O0" CACHE INTERNAL "" )
set ( CMAKE_C_FLAGS_RELEASE "-Os" CACHE INTERNAL "" )
set ( CMAKE_CXX_FLAGS "--std=c++11 -fPIC -Wall -Werror -Wextra -D_GLIBCXX_USE_NANOSLEEP -Wno-psabi --sysroot=${CMAKE_SYSROOT}" CACHE INTERNAL "" )
set ( CMAKE_CXX_FLAGS_DEBUG "-g -O0" CACHE INTERNAL "" )
set ( CMAKE_CXX_FLAGS_RELEASE "-Os" CACHE INTERNAL "" )
set ( CMAKE_AR ${RASPBERRY_DEVROOT}/bin/ar CACHE INTERNAL "" )
set ( CMAKE_AS ${RASPBERRY_DEVROOT}/bin/as CACHE INTERNAL "" )
set ( CMAKE_LD ${RASPBERRY_DEVROOT}/bin/ld CACHE INTERNAL "" )
set ( CMAKE_NM ${RASPBERRY_DEVROOT}/bin/nm CACHE INTERNAL "" )
set ( CMAKE_OBJCOPY ${RASPBERRY_DEVROOT}/bin/objcopy CACHE INTERNAL "" )
set ( CMAKE_OBJDUMP ${RASPBERRY_DEVROOT}/bin/objdump CACHE INTERNAL "" )
set ( CMAKE_RANLIB ${RASPBERRY_DEVROOT}/bin/ranlib CACHE INTERNAL "" )
set ( CMAKE_STRIP ${RASPBERRY_DEVROOT}/bin/strip CACHE INTERNAL "" )
