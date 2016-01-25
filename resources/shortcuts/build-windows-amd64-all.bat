@echo on

echo --- default
cd ..
rmdir /s /q build || exit /b
mkdir build || exit /b
cd build || exit /b
cmake .. ^
    -G "Visual Studio 12 2013 Win64" ^
    || exit /b
cmake --build . || exit /b

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
rem ctest || exit /b

echo --- windows_amd64_msvc_RELEASE
cd ..
rmdir /s /q build || exit /b
mkdir build || exit /b
cd build || exit /b
cmake ../test ^
    -DSTATICLIB_TOOLCHAIN=windows_amd64_msvc ^
    -G "Visual Studio 12 2013 Win64" ^
    -DCMAKE_BUILD_TYPE=Release ^
    -DSTATICLIB_USE_DEPLIBS_CACHE=ON ^
     || exit /b
cmake --build . --config Release || exit /b
ctest || exit /b

echo BUILD SUCCESSFUL
