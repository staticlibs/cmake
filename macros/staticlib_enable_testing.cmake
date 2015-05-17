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
# collects test from 'test' directory (non-recursively) and register 
# these test with ctest using memory checker (if available)
# enabled only for top-level project
# includes, libs and definitions are passed as variable names (NOT values)

macro ( staticlib_enable_testing _includes_var_name _libs_var_name _defs_var_name )
    if ( "${STATICLIB_ROOT_SOURCE_DIR}" STREQUAL "${PROJECT_SOURCE_DIR}" )
        set ( ${PROJECT_NAME}_CXX_EXTENSION cpp CACHE INTERNAL "" )
        set ( ${PROJECT_NAME}_TEST_DIRECTORY test CACHE INTERNAL "" )
        set ( ${PROJECT_NAME}_TEST_POSTFIX _test CACHE INTERNAL "" )
        enable_testing ( )
        file ( GLOB ${PROJECT_NAME}_TEST_SRC
                RELATIVE ${CMAKE_CURRENT_LIST_DIR}/${${PROJECT_NAME}_TEST_DIRECTORY}
                ${CMAKE_CURRENT_LIST_DIR}/${${PROJECT_NAME}_TEST_DIRECTORY}/*${${PROJECT_NAME}_TEST_POSTFIX}.${${PROJECT_NAME}_CXX_EXTENSION} )
        foreach ( _testsrc ${${PROJECT_NAME}_TEST_SRC} )
            string ( REPLACE .${${PROJECT_NAME}_CXX_EXTENSION} "" _testname ${_testsrc} )
            message ( STATUS "Adding test: [${_testname}]" )
            add_executable ( ${_testname} ${CMAKE_CURRENT_LIST_DIR}/test/${_testsrc} )
            target_include_directories ( ${_testname} BEFORE PRIVATE ${${_includes_var_name}} )
            target_link_libraries ( ${_testname} ${${_libs_var_name}} )
            target_compile_definitions ( ${_testname} PRIVATE ${${_defs_var_name}} )
            if ( DEFINED CMAKE_MEMORYCHECK_COMMAND )
                add_test ( ${_testname} 
                        ${CMAKE_MEMORYCHECK_COMMAND} ${CMAKE_MEMORYCHECK_COMMAND_OPTIONS} 
                        ${CMAKE_RUNTIME_OUTPUT_DIRECTORY}/${_testname} )
            else ( )
                add_test ( ${_testname} ${CMAKE_RUNTIME_OUTPUT_DIRECTORY}/${_testname} )
            endif ( )
        endforeach ( )
    endif ( )
endmacro ( )
