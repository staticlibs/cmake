
cmake_minimum_required ( VERSION 2.8 )

set ( CMAKE_SYSTEM_NAME Windows )
set ( CMAKE_C_COMPILER cl.exe )
set ( CMAKE_CXX_COMPILER cl.exe )
set ( CMAKE_CXX_FLAGS "/W4 /WX /EHsc" CACHE STRING "compiler flags" )
set ( CMAKE_CXX_FLAGS_DEBUG "/D_DEBUG /MDd /Zi /Ob0 /Od /RTC1" CACHE STRING "compiler flags debug" )
set ( CMAKE_CXX_FLAGS_RELEASE "/MT /Os /D NDEBUG" CACHE STRING "compiler flags release" )
set ( CMAKE_BUILD_TYPE "Debug" CACHE STRING "default build type" )

