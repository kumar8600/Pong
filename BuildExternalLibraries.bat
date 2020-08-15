@echo off

rem protobuf
pushd protobuf

mkdir build_x86
pushd build_x86

cmake ..\cmake -G "Visual Studio 16 2019" -A Win32 -DCMAKE_INSTALL_PREFIX=%~dp0local\x86 -Dprotobuf_BUILD_TESTS=OFF -Dprotobuf_BUILD_SHARED_LIBS=ON
cmake --build . --config Release --target install

popd

mkdir build_x64
pushd build_x64

cmake ..\cmake -G "Visual Studio 16 2019" -A x64 -DCMAKE_INSTALL_PREFIX=%~dp0local\x64 -Dprotobuf_BUILD_TESTS=OFF -Dprotobuf_BUILD_SHARED_LIBS=ON
cmake --build . --config Release --target install

popd

popd
