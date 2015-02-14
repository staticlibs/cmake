
# todo
cmake_minimum_required ( VERSION 2.8 )

set ( CMAKE_SYSTEM_NAME Generic )

set ( STATICLIB_TOOLCHAIN_DIR "SPECIFY_ME_I_AM_STATICLIB_TOOLCHAIN_DIR" CACHE STRING "toolchain dir" )

set ( CMAKE_HOST arm-eabi-linux )
set ( CMAKE_SYSROOT ${STATICLIB_TOOLCHAIN_DIR}/sysroot CACHE STRING "toolchain sysroot" )
set ( STATICLIB_DEVROOT ${STATICLIB_TOOLCHAIN_DIR}/arm-linux-androideabi CACHE STRING "toolchain devroot" )

set ( CMAKE_C_COMPILER ${STATICLIB_DEVROOT}/bin/gcc CACHE STRING "c compiler" )
set ( CMAKE_CXX_COMPILER ${STATICLIB_DEVROOT}/bin/g++ CACHE STRING "c++ compiler" )
set ( CMAKE_C_FLAGS "-fPIC -mthumb -DANDROID -mandroid --sysroot=${CMAKE_SYSROOT}" CACHE STRING "C compiler flags" )
set ( CMAKE_C_FLAGS_DEBUG "-g -O0" CACHE STRING "C compiler debug flags" )
set ( CMAKE_C_FLAGS_RELEASE "-Os" CACHE STRING "C compiler release flags" )
set ( CMAKE_CXX_FLAGS "--std=c++11 -fPIC -Wall -Werror -Wextra -mthumb -DANDROID -mandroid --sysroot=${CMAKE_SYSROOT}" CACHE STRING "C++ compiler flags" )
set ( CMAKE_CXX_FLAGS_DEBUG "-g -O0" CACHE STRING "C++ compiler debug flags" )
set ( CMAKE_CXX_FLAGS_RELEASE "-Os" CACHE STRING "C++ compiler release flags" )
set ( CMAKE_EXE_LINKER_FLAGS "-mthumb -DANDROID -mandroid" CACHE STRING "linker flags" )
# todo: check whether required
set ( CMAKE_SHARED_LIBRARY_LINK_C_FLAGS "" CACHE STRING "disable linker shared flags" )
set ( CMAKE_SHARED_LIBRARY_LINK_CXX_FLAGS "" CACHE STRING "disable linker flags" )
# todo: end
set ( CMAKE_AR ${STATICLIB_DEVROOT}/bin/ar CACHE STRING "ar utility" )
set ( CMAKE_AS ${STATICLIB_DEVROOT}/bin/as CACHE STRING "as utility" )
set ( CMAKE_LD ${STATICLIB_DEVROOT}/bin/ld CACHE STRING "ld utility" )
set ( CMAKE_NM ${STATICLIB_DEVROOT}/bin/nm CACHE STRING "nm utility" )
set ( CMAKE_OBJCOPY ${STATICLIB_DEVROOT}/bin/objcopy CACHE STRING "objcopy utility" )
set ( CMAKE_OBJDUMP ${STATICLIB_DEVROOT}/bin/objdump CACHE STRING "objdump utility" )
set ( CMAKE_RANLIB ${STATICLIB_DEVROOT}/bin/ranlib CACHE STRING "ranlib utility" )
set ( CMAKE_STRIP ${STATICLIB_DEVROOT}/bin/strip CACHE STRING "strip utility" )
set ( CMAKE_BUILD_TYPE "Debug" CACHE STRING "default build type" )
