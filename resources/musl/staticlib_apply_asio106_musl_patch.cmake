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

# applies musl compatibility patch to ASIO 10.6
# https://github.com/voidlinux/void-packages/blob/4d4449033e3caa02bc9f9f978c30ef6a79b573c4/srcpkgs/asio/patches/musl_strerror_r.patch
macro ( staticlib_apply_asio106_musl_patch _asio_path _patch_path )
    message ( STATUS "Applying patch: [${_patch_path}] to [${_asio_path}]" )
    execute_process ( COMMAND git reset --hard HEAD
            WORKING_DIRECTORY ${_asio_path} )
    execute_process ( COMMAND git apply ${_patch_path}
            WORKING_DIRECTORY ${_asio_path} )
endmacro ( )
