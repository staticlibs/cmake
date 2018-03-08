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

macro ( staticlib_extract_debuginfo_executable _target_name )
    if ( NOT WIN32 )
        add_custom_command ( TARGET ${_target_name} POST_BUILD
                COMMAND ${CMAKE_OBJCOPY}
                        --only-keep-debug
                        ${CMAKE_EXECUTABLE_PREFIX}${_target_name}${CMAKE_EXECUTABLE_SUFFIX}
                        ${CMAKE_EXECUTABLE_PREFIX}${_target_name}${STATICLIB_DEBUGINFO_EXE_SUFFIX}
                COMMAND ${CMAKE_OBJCOPY}
                        --strip-debug
                        ${CMAKE_EXECUTABLE_PREFIX}${_target_name}${CMAKE_EXECUTABLE_SUFFIX}
                COMMAND ${CMAKE_OBJCOPY}
                        --add-gnu-debuglink
                        ${CMAKE_EXECUTABLE_PREFIX}${_target_name}${STATICLIB_DEBUGINFO_EXE_SUFFIX}
                        ${CMAKE_EXECUTABLE_PREFIX}${_target_name}${CMAKE_EXECUTABLE_SUFFIX}
                WORKING_DIRECTORY ${CMAKE_RUNTIME_OUTPUT_DIRECTORY}
                COMMENT "Extracting debuginfo into: [${CMAKE_EXECUTABLE_PREFIX}${_target_name}${STATICLIB_DEBUGINFO_EXE_SUFFIX}]" )
    endif ()
endmacro ( )
