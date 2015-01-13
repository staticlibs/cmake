
cmake_minimum_required ( VERSION 2.8 )

set ( CMAKE_MEMORYCHECK_COMMAND "C:/Users/alex/apps/drmemory/bin/drmemory.exe" ) 
set ( CMAKE_MEMORYCHECK_COMMAND_OPTIONS
        -show_reachable
        -exit_code_if_errors
        42
        -batch
        --
    )
