@echo on

echo --- default
cd ..
rmdir /s /q build || exit /b
mkdir build || exit /b
cd build || exit /b
cmake .. ^
    -DSTATICLIB_USE_DEPLIBS_CACHE=ON ^
    || exit /b
cmake --build . || exit /b

echo --- windows_i386_msvc
cd ..
rmdir /s /q build || exit /b
mkdir build || exit /b
cd build || exit /b
cmake ../test ^
    -DSTATICLIB_TOOLCHAIN=windows_i386_msvc ^
    -DSTATICLIB_USE_DEPLIBS_CACHE=ON ^
    || exit /b
cmake --build . || exit /b
rem ctest || exit /b

echo --- windows_i386_msvc_RELEASE
cd ..
rmdir /s /q build || exit /b
mkdir build || exit /b
cd build || exit /b
cmake ../test ^
    -DSTATICLIB_TOOLCHAIN=windows_i386_msvc ^
    -DCMAKE_BUILD_TYPE=Release ^
    -T v120_xp ^
    -DSTATICLIB_USE_DEPLIBS_CACHE=ON ^
     || exit /b
cmake --build . --config Release || exit /b
ctest || exit /b

echo BUILD SUCCESSFUL
