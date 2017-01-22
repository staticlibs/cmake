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

cmake_minimum_required ( VERSION 2.8.11 )
include ( ${CMAKE_CURRENT_LIST_DIR}/toolchains_common.cmake )

set ( IOS_SDK_VERSION 8.1 CACHE STRING "iOS SDK version" )
set ( IOS_DEVELOPER /Applications/Xcode.app/Contents/Developer CACHE INTERNAL "" )
set ( IOS_PLATFORM iPhoneSimulator CACHE INTERNAL "" )
set ( IOS_ARCH i386 CACHE INTERNAL "" )
set ( IOS_DEVROOT ${IOS_DEVELOPER}/Platforms/${IOS_PLATFORM}.platform/Developer CACHE INTERNAL "" )
set ( IOS_SDKROOT ${IOS_DEVROOT}/SDKs/${IOS_PLATFORM}${IOS_SDK_VERSION}.sdk CACHE INTERNAL "" )
set ( IOS_DEVTOOLS ${IOS_DEVELOPER}/Toolchains/XcodeDefault.xctoolchain/usr CACHE INTERNAL "" )

set ( CMAKE_SYSTEM_NAME Generic )
set ( UNIX 1 CACHE INTERNAL "" )
set ( CMAKE_HOST i386-apple-darwin )
set ( CMAKE_SYSROOT ${IOS_SDKROOT} CACHE INTERNAL "" )
set ( CMAKE_C_COMPILER ${IOS_DEVELOPER}/usr/bin/gcc CACHE INTERNAL "" )
set ( CMAKE_CXX_COMPILER ${IOS_DEVELOPER}/usr/bin/g++ CACHE INTERNAL "" )
set ( CMAKE_C_FLAGS "-fPIC -arch ${IOS_ARCH} -pipe -no-cpp-precomp -isysroot ${CMAKE_SYSROOT} -miphoneos-version-min=7.0" CACHE INTERNAL "" )
set ( CMAKE_C_FLAGS_DEBUG "-g -O0" CACHE INTERNAL "" )
set ( CMAKE_C_FLAGS_RELEASE "-Os -DNDEBUG" CACHE INTERNAL "" )
set ( CMAKE_CXX_FLAGS "${STATICLIB_COMMON_GPLUSPLUS_FLAGS} -arch ${IOS_ARCH} -pipe -no-cpp-precomp -isysroot ${CMAKE_SYSROOT} -miphoneos-version-min=7.0" CACHE INTERNAL "" )
set ( CMAKE_CXX_FLAGS_DEBUG "-g -O0" CACHE INTERNAL "" )
set ( CMAKE_CXX_FLAGS_RELEASE "-Os -DNDEBUG" CACHE INTERNAL "" )
set ( CMAKE_EXE_LINKER_FLAGS "-arch ${IOS_ARCH} -pipe -no-cpp-precomp -isysroot ${CMAKE_SYSROOT} -miphoneos-version-min=7.0" CACHE INTERNAL "" )
#set ( CMAKE_SHARED_LIBRARY_LINK_C_FLAGS "" CACHE STRING "disable linker shared flags" )
#set ( CMAKE_SHARED_LIBRARY_LINK_CXX_FLAGS "" CACHE STRING "disable linker flags" )
set ( CMAKE_AR ${IOS_DEVTOOLS}/bin/ar CACHE INTERNAL "" )
set ( CMAKE_AS ${IOS_DEVTOOLS}/bin/as CACHE INTERNAL "" )
set ( CMAKE_LD ${IOS_DEVTOOLS}/bin/ld CACHE INTERNAL "" )
set ( CMAKE_NM ${IOS_DEVTOOLS}/bin/nm CACHE INTERNAL "" )
set ( CMAKE_OBJCOPY ${IOS_DEVTOOLS}/bin/objcopy CACHE INTERNAL "" )
set ( CMAKE_OBJDUMP ${IOS_DEVTOOLS}/bin/objdump CACHE INTERNAL "" )
set ( CMAKE_RANLIB ${IOS_DEVTOOLS}/bin/ranlib CACHE INTERNAL "" )
set ( CMAKE_STRIP ${IOS_DEVTOOLS}/bin/strip CACHE INTERNAL "" )
