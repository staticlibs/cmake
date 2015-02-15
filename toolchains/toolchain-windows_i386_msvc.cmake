
cmake_minimum_required ( VERSION 2.8.3 )

set ( CMAKE_SYSTEM_NAME Windows CACHE INTERNAL "" )
set ( CMAKE_C_COMPILER cl.exe CACHE INTERNAL "" )
set ( CMAKE_CXX_COMPILER cl.exe CACHE INTERNAL "" )
set ( CMAKE_C_FLAGS "" CACHE INTERNAL "" )
set ( CMAKE_C_FLAGS_DEBUG "/D_DEBUG /Zi /Ob0 /Od" CACHE INTERNAL "" )
set ( CMAKE_C_FLAGS_RELEASE "/Os /D NDEBUG" CACHE INTERNAL "" )
set ( CMAKE_CXX_FLAGS "/W4 /WX /EHsc" CACHE INTERNAL "" )
set ( CMAKE_CXX_FLAGS_DEBUG "/D_DEBUG /MDd /Zi /Ob0 /Od /RTC1" CACHE INTERNAL "" )
set ( CMAKE_CXX_FLAGS_RELEASE "/MT /Os /D NDEBUG" CACHE INTERNAL "" )
set ( CMAKE_BUILD_TYPE "Debug" CACHE INTERNAL "" )
if ( EXISTS "C:/drmemory/bin/drmemory.exe" )
    set ( CMAKE_MEMORYCHECK_COMMAND "C:/drmemory/bin/drmemory.exe" CACHE INTERNAL "" ) 
    set ( CMAKE_MEMORYCHECK_COMMAND_OPTIONS
            -show_reachable
            -exit_code_if_errors
            42
            -batch
            --
        CACHE INTERNAL "" )
endif ( )

