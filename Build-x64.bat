@echo off

if "%VCPKG_ROOT%"=="" (
    echo Error: VCPKG_ROOT must be set
    exit /b
)

git submodule update --init --recursive
%VCPKG_ROOT%\vcpkg install openssl:x64-windows
call .\BuildExternalLibraries.bat
cmake -B build -S . -G "Visual Studio 16 2019" -A x64 -DCMAKE_TOOLCHAIN_FILE="%VCPKG_ROOT%\scripts\buildsystems\vcpkg.cmake"
cmake --build build --config Release
