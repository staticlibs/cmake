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

# toolchain for linux: https://github.com/staticlibs/android-ndk-r9d-arm-linux-androideabi-4.8

cmake_minimum_required ( VERSION 2.8.12 )
include ( ${CMAKE_CURRENT_LIST_DIR}/toolchains_common.cmake )

set ( ANDROID_TOOLCHAIN_NAME arm-linux-androideabi CACHE INTERNAL "" )
set ( ANDROID_TOOLCHAIN_DIR "SPECIFY_ME_I_AM_ANDROID_TOOLCHAIN_DIR" CACHE STRING "" )
set ( ANDROID_TOOLCHAIN_PREFIX ${ANDROID_TOOLCHAIN_DIR}/bin/${ANDROID_TOOLCHAIN_NAME} CACHE INTERNAL "" )
set ( ANDROID_GNUSTL_SHARED_PATH ${ANDROID_TOOLCHAIN_DIR}/${ANDROID_TOOLCHAIN_NAME}/lib/armv7-a/thumb )

set ( CMAKE_SYSTEM_NAME Generic )
set ( UNIX 1 CACHE INTERNAL "" )
set ( CMAKE_HOST arm-eabi-linux )
set ( CMAKE_SYSROOT ${ANDROID_TOOLCHAIN_DIR}/sysroot CACHE INTERNAL "" )
set ( CMAKE_C_COMPILER ${ANDROID_TOOLCHAIN_PREFIX}-gcc CACHE INTERNAL "" )
set ( CMAKE_CXX_COMPILER ${ANDROID_TOOLCHAIN_PREFIX}-g++ CACHE INTERNAL "" )
set ( CMAKE_C_FLAGS "-fPIC -DANDROID -mandroid --sysroot=${CMAKE_SYSROOT}" )
set ( CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -march=armv7-a -mthumb -mfloat-abi=softfp -mfpu=vfpv3-d16" )
set ( CMAKE_C_FLAGS "${CMAKE_C_FLAGS}" CACHE INTERNAL "" )
set ( CMAKE_C_FLAGS_DEBUG "-g -O0" CACHE INTERNAL "" )
set ( CMAKE_C_FLAGS_RELEASE "-Os -DNDEBUG" CACHE INTERNAL "" )
set ( CMAKE_CXX_FLAGS "${STATICLIB_COMMON_GPLUSPLUS_FLAGS} -Wlogical-op" )
set ( CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -DANDROID -mandroid --sysroot=${CMAKE_SYSROOT}" )
set ( CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -march=armv7-a -mthumb -mfloat-abi=softfp -mfpu=vfpv3-d16" )
set ( CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS}" CACHE INTERNAL "" )
set ( CMAKE_CXX_FLAGS_DEBUG "-g -O0" CACHE INTERNAL "" )
set ( CMAKE_CXX_FLAGS_RELEASE "-Os -DNDEBUG" CACHE INTERNAL "" )
set ( CMAKE_EXE_LINKER_FLAGS "-DANDROID -mandroid -march=armv7-a -mthumb -Wl,--fix-cortex-a8" CACHE INTERNAL "" )
set ( CMAKE_AR ${ANDROID_TOOLCHAIN_PREFIX}-ar CACHE INTERNAL "" )
set ( CMAKE_AS ${ANDROID_TOOLCHAIN_PREFIX}-as CACHE INTERNAL "" )
set ( CMAKE_LD ${ANDROID_TOOLCHAIN_PREFIX}-ld CACHE INTERNAL "" )
set ( CMAKE_NM ${ANDROID_TOOLCHAIN_PREFIX}-nm CACHE INTERNAL "" )
set ( CMAKE_OBJCOPY ${ANDROID_TOOLCHAIN_PREFIX}-objcopy CACHE INTERNAL "" )
set ( CMAKE_OBJDUMP ${ANDROID_TOOLCHAIN_PREFIX}-objdump CACHE INTERNAL "" )
set ( CMAKE_RANLIB ${ANDROID_TOOLCHAIN_PREFIX}-ranlib CACHE INTERNAL "" )
set ( CMAKE_STRIP ${ANDROID_TOOLCHAIN_PREFIX}-strip CACHE INTERNAL "" )
