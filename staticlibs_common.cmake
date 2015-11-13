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

# override some default options
OPTION ( BUILD_SHARED_LIBS "Build shared libraries." OFF )
OPTION ( CMAKE_INCLUDE_DIRECTORIES_BEFORE "Prefer staticlibs libs over system ones." ON )
set_property ( GLOBAL PROPERTY USE_FOLDERS ON )

# override some default variables
if ( NOT DEFINED STATICLIB_ROOT_SOURCE_DIR )
    set ( STATICLIB_ROOT_SOURCE_DIR ${PROJECT_SOURCE_DIR} CACHE INTERNAL "" )
    set ( STATICLIB_ROOT_BINARY_DIR ${PROJECT_BINARY_DIR} CACHE INTERNAL "" )
    set ( CMAKE_RUNTIME_OUTPUT_DIRECTORY ${STATICLIB_ROOT_BINARY_DIR}/bin CACHE INTERNAL "" )
    set ( CMAKE_RUNTIME_OUTPUT_DIRECTORY_DEBUG ${STATICLIB_ROOT_BINARY_DIR}/bin CACHE INTERNAL "" )
    set ( CMAKE_RUNTIME_OUTPUT_DIRECTORY_RELEASE ${STATICLIB_ROOT_BINARY_DIR}/bin CACHE INTERNAL "" )
    set ( CMAKE_LIBRARY_OUTPUT_DIRECTORY ${STATICLIB_ROOT_BINARY_DIR}/bin CACHE INTERNAL "" )
    set ( CMAKE_LIBRARY_OUTPUT_DIRECTORY_DEBUG ${STATICLIB_ROOT_BINARY_DIR}/bin CACHE INTERNAL "" )
    set ( CMAKE_LIBRARY_OUTPUT_DIRECTORY_RELEASE ${STATICLIB_ROOT_BINARY_DIR}/bin CACHE INTERNAL "" )    
    set ( CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${STATICLIB_ROOT_BINARY_DIR}/bin CACHE INTERNAL "" )
    set ( CMAKE_ARCHIVE_OUTPUT_DIRECTORY_DEBUG ${STATICLIB_ROOT_BINARY_DIR}/bin CACHE INTERNAL "" )
    set ( CMAKE_ARCHIVE_OUTPUT_DIRECTORY_RELEASE ${STATICLIB_ROOT_BINARY_DIR}/bin CACHE INTERNAL "" )
endif ( )

# include all macros
file ( GLOB_RECURSE STATICLIB_COMMON_MACROS 
    ${STATICLIB_CMAKE}/macros/*.cmake )
foreach ( _commonmacro ${STATICLIB_COMMON_MACROS} )
    include ( ${_commonmacro} )
endforeach ( )
