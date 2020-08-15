cmake_minimum_required(VERSION 3.4)
project(Pong)

set(CMAKE_MODULE_PATH "${PROJECT_SOURCE_DIR}/cmake/" ${CMAKE_MODULE_PATH})

# Add Corrade as a subproject
add_subdirectory(corrade EXCLUDE_FROM_ALL)

# Add Magnum as a subproject, enable Sdl2Application
if (MSVC)
  set(CMAKE_PREFIX_PATH ${PROJECT_SOURCE_DIR}/SDL2 ${CMAKE_PREFIX_PATH})
endif (MSVC)
set(WITH_SDL2APPLICATION ON CACHE BOOL "" FORCE)
add_subdirectory(magnum EXCLUDE_FROM_ALL)

# protobuf
if (MSVC)
  set(protobuf_BUILD_TESTS OFF)
  set(protobuf_BUILD_SHARED_LIBS ON)
  add_subdirectory(protobuf/cmake EXCLUDE_FROM_ALL)
endif (MSVC)

# GameNetworkingSockets
add_subdirectory(GameNetworkingSockets EXCLUDE_FROM_ALL)

add_subdirectory(Pong)
