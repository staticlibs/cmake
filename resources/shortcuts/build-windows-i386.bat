@echo on

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
ctest || exit /b

echo BUILD SUCCESSFUL
