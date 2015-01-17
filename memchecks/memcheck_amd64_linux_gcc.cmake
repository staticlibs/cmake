
cmake_minimum_required ( VERSION 2.8 )

set ( CMAKE_MEMORYCHECK_COMMAND "/usr/bin/valgrind" ) 
set ( CMAKE_MEMORYCHECK_COMMAND_OPTIONS
        --leak-check=yes
        --show-reachable=yes
        --track-origins=yes
        --error-exitcode=42
        --track-fds=yes
    )
