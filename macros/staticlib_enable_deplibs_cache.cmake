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
# if deplibs cache is enabled, copies library output directory to cache
# option STATICLIB_USE_DEPLIBS_CACHE must be set explicitely

macro ( staticlib_enable_deplibs_cache )
    if ( STATICLIB_USE_DEPLIBS_CACHE )
        add_custom_target ( ${PROJECT_NAME}_CACHE_DEPLIBS 
                COMMAND ${CMAKE_COMMAND} -E copy_directory
                ${CMAKE_LIBRARY_OUTPUT_DIRECTORY}
                ${STATICLIB_DEPLIBS_CACHE_DIR} 
                COMMENT "Copying libs to cache: [${STATICLIB_DEPLIBS_CACHE_DIR}]" )
    endif ( )
endmacro ( )
