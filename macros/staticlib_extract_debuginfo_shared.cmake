# Copyright 2018, alex at staticlibs.net
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

macro ( staticlib_extract_debuginfo_shared _target_name )
    if ( WIN32 )
        # no-op
    elseif ( APPLE )
        add_custom_command ( TARGET ${_target_name} POST_BUILD
                COMMAND dsymutil
                        ${CMAKE_SHARED_LIBRARY_PREFIX}${_target_name}${CMAKE_SHARED_LIBRARY_SUFFIX}
                        -o
                        ${CMAKE_SHARED_LIBRARY_PREFIX}${_target_name}.dSYM
                COMMAND zip
                        -qr0
                        ${CMAKE_SHARED_LIBRARY_PREFIX}${_target_name}${STATICLIB_DEBUGINFO_SHARED_SUFFIX}
                        ${CMAKE_SHARED_LIBRARY_PREFIX}${_target_name}.dSYM
                WORKING_DIRECTORY ${CMAKE_LIBRARY_OUTPUT_DIRECTORY}
                COMMENT "Extracting debuginfo into: [${CMAKE_SHARED_LIBRARY_PREFIX}${_target_name}${STATICLIB_DEBUGINFO_SHARED_SUFFIX}]" )
    else ( )
        add_custom_command ( TARGET ${_target_name} POST_BUILD
                COMMAND ${CMAKE_OBJCOPY}
                        --only-keep-debug
                        ${CMAKE_SHARED_LIBRARY_PREFIX}${_target_name}${CMAKE_SHARED_LIBRARY_SUFFIX}
                        ${CMAKE_SHARED_LIBRARY_PREFIX}${_target_name}${STATICLIB_DEBUGINFO_SHARED_SUFFIX}
                COMMAND ${CMAKE_OBJCOPY}
                        --strip-debug
                        ${CMAKE_SHARED_LIBRARY_PREFIX}${_target_name}${CMAKE_SHARED_LIBRARY_SUFFIX}
                COMMAND ${CMAKE_OBJCOPY}
                        --add-gnu-debuglink
                        ${CMAKE_SHARED_LIBRARY_PREFIX}${_target_name}${STATICLIB_DEBUGINFO_SHARED_SUFFIX}
                        ${CMAKE_SHARED_LIBRARY_PREFIX}${_target_name}${CMAKE_SHARED_LIBRARY_SUFFIX}
                WORKING_DIRECTORY ${CMAKE_LIBRARY_OUTPUT_DIRECTORY}
                COMMENT "Extracting debuginfo into: [${CMAKE_SHARED_LIBRARY_PREFIX}${_target_name}${STATICLIB_DEBUGINFO_SHARED_SUFFIX}]" )
    endif ()
endmacro ( )
