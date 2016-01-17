@echo on

echo --- windows_amd64_msvc
cd ..
rmdir /s /q build || exit /b
mkdir build || exit /b
cd build || exit /b
cmake ../test ^
    -DSTATICLIB_TOOLCHAIN=windows_amd64_msvc ^
    -G "Visual Studio 12 2013 Win64" ^
    -DSTATICLIB_USE_DEPLIBS_CACHE=ON ^
    || exit /b
cmake --build . || exit /b
ctest || exit /b

echo BUILD SUCCESSFUL
