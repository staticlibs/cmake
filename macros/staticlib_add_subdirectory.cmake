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
# call add_subdirectory only if specified module is not yet added to main project

macro ( staticlib_add_subdirectory _project_path )
    string ( REGEX REPLACE "^.*/" "" _target_name ${_project_path} )
    if ( NOT TARGET ${_target_name} )
        message ( STATUS "Adding dependency: [${_target_name}], path: [${_project_path}]" )
        add_subdirectory ( ${_project_path} ${STATICLIB_ROOT_BINARY_DIR}/${_target_name} )
        set_target_properties ( ${_target_name} PROPERTIES FOLDER "deps" )
    endif ( )
endmacro ( )
