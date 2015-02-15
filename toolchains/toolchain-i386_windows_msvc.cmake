
# todo
cmake_minimum_required ( VERSION 2.8 )

set ( CMAKE_SYSTEM_NAME Windows )
set ( CMAKE_C_COMPILER cl.exe )
set ( CMAKE_CXX_COMPILER cl.exe )
set ( CMAKE_C_FLAGS "" CACHE STRING "C compiler flags" )
set ( CMAKE_C_FLAGS_DEBUG "/D_DEBUG /Zi /Ob0 /Od" CACHE STRING "C compiler flags debug" )
set ( CMAKE_C_FLAGS_RELEASE "/Os /D NDEBUG" CACHE STRING "C compiler flags release" )
set ( CMAKE_CXX_FLAGS "/W4 /WX /EHsc" CACHE STRING "C++ compiler flags" )
set ( CMAKE_CXX_FLAGS_DEBUG "/D_DEBUG /MDd /Zi /Ob0 /Od /RTC1" CACHE STRING "C++ compiler flags debug" )
set ( CMAKE_CXX_FLAGS_RELEASE "/MT /Os /D NDEBUG" CACHE STRING "C++ compiler flags release" )
set ( CMAKE_BUILD_TYPE "Debug" CACHE STRING "default build type" )
if ( EXISTS "C:/drmemory/bin/drmemory.exe" )
    set ( CMAKE_MEMORYCHECK_COMMAND "C:/drmemory/bin/drmemory.exe" ) 
    set ( CMAKE_MEMORYCHECK_COMMAND_OPTIONS
            -show_reachable
            -exit_code_if_errors
            42
            -batch
            --
        )
endif ( )

