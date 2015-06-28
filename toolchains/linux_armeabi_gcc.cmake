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

# toolchain for linux: https://github.com/staticlibs/gcc-linaro-arm-linux-gnueabi
# source: https://releases.linaro.org/12.04/components/toolchain/binaries

cmake_minimum_required ( VERSION 2.8.12 )

set ( CMAKE_BUILD_TYPE "Debug" CACHE STRING "Default build type" )

set ( ARMEABI_TOOLCHAIN_DIR "SPECIFY_ME_I_AM_ARMEABI_TOOLCHAIN_DIR" CACHE STRING "toolchain dir" )
set ( ARMEABI_TOOLCHAIN_NAME arm-linux-gnueabi CACHE INTERNAL "" )
set ( ARMEABI_DEVROOT ${ARMEABI_TOOLCHAIN_DIR}/${ARMEABI_TOOLCHAIN_NAME} CACHE INTERNAL "" )

set ( CMAKE_SYSTEM_NAME Linux )
set ( CMAKE_HOST arm-linux-gnueabi )
set ( CMAKE_SYSROOT ${ARMEABI_DEVROOT}/libc CACHE INTERNAL "" )
set ( CMAKE_C_COMPILER ${ARMEABI_TOOLCHAIN_DIR}/bin/${ARMEABI_TOOLCHAIN_NAME}-gcc CACHE INTERNAL "" )
set ( CMAKE_CXX_COMPILER ${ARMEABI_TOOLCHAIN_DIR}/bin/${ARMEABI_TOOLCHAIN_NAME}-g++ CACHE INTERNAL "" )
set ( CMAKE_C_FLAGS "-fPIC --sysroot=${CMAKE_SYSROOT}" CACHE INTERNAL "" )
set ( CMAKE_C_FLAGS_DEBUG "-g -O0" CACHE INTERNAL "" )
set ( CMAKE_C_FLAGS_RELEASE "-Os" CACHE INTERNAL "" )
set ( CMAKE_CXX_FLAGS "--std=c++11 -fPIC -Wall -Werror -Wextra -D_GLIBCXX_USE_NANOSLEEP -Wno-psabi --sysroot=${CMAKE_SYSROOT}" CACHE INTERNAL "" )
set ( CMAKE_CXX_FLAGS_DEBUG "-g -O0" CACHE INTERNAL "" )
set ( CMAKE_CXX_FLAGS_RELEASE "-Os" CACHE INTERNAL "" )
set ( CMAKE_AR ${ARMEABI_DEVROOT}/bin/ar CACHE INTERNAL "" )
set ( CMAKE_AS ${ARMEABI_DEVROOT}/bin/as CACHE INTERNAL "" )
set ( CMAKE_LD ${ARMEABI_DEVROOT}/bin/ld CACHE INTERNAL "" )
set ( CMAKE_NM ${ARMEABI_DEVROOT}/bin/nm CACHE INTERNAL "" )
set ( CMAKE_OBJCOPY ${ARMEABI_DEVROOT}/bin/objcopy CACHE INTERNAL "" )
set ( CMAKE_OBJDUMP ${ARMEABI_DEVROOT}/bin/objdump CACHE INTERNAL "" )
set ( CMAKE_RANLIB ${ARMEABI_DEVROOT}/bin/ranlib CACHE INTERNAL "" )
set ( CMAKE_STRIP ${ARMEABI_DEVROOT}/bin/strip CACHE INTERNAL "" )
