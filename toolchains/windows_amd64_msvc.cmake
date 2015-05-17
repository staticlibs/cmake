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

set ( CMAKE_SYSTEM_NAME Windows )
set ( CMAKE_C_COMPILER cl.exe )
set ( CMAKE_CXX_COMPILER cl.exe )
set ( CMAKE_C_FLAGS "" CACHE INTERNAL "" )
set ( CMAKE_C_FLAGS_DEBUG "/D_DEBUG /Zi /Ob0 /Od" CACHE INTERNAL "" )
set ( CMAKE_C_FLAGS_RELEASE "/Os /D NDEBUG" CACHE INTERNAL "" )
set ( CMAKE_CXX_FLAGS "/W4 /WX /EHsc" CACHE INTERNAL "" )
set ( CMAKE_CXX_FLAGS_DEBUG "/D_DEBUG /MDd /Zi /Ob0 /Od /RTC1" CACHE INTERNAL "" )
set ( CMAKE_CXX_FLAGS_RELEASE "/MT /Os /D NDEBUG" CACHE INTERNAL "" )
