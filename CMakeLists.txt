cmake_minimum_required(VERSION 3.4)
project(Pong)

set(CMAKE_MODULE_PATH "${PROJECT_SOURCE_DIR}/cmake/" ${CMAKE_MODULE_PATH})
if(MSVC)
  if(CMAKE_SIZEOF_VOID_P EQUAL 8)
    set(CMAKE_PREFIX_PATH ${PROJECT_SOURCE_DIR}/local/x64 ${CMAKE_PREFIX_PATH})
  elseif(CMAKE_SIZEOF_VOID_P EQUAL 4)
    set(CMAKE_PREFIX_PATH ${PROJECT_SOURCE_DIR}/local/x86 ${CMAKE_PREFIX_PATH})
  endif()
endif(MSVC)

# Add Corrade as a subproject
add_subdirectory(corrade EXCLUDE_FROM_ALL)

# Add Magnum as a subproject, enable Sdl2Application
if (MSVC)
  set(CMAKE_PREFIX_PATH ${PROJECT_SOURCE_DIR}/SDL2 ${CMAKE_PREFIX_PATH})
endif (MSVC)
set(WITH_SDL2APPLICATION ON CACHE BOOL "" FORCE)
add_subdirectory(magnum EXCLUDE_FROM_ALL)
  
message(STATUS ${CMAKE_PREFIX_PATH})
# GameNetworkingSockets
add_subdirectory(GameNetworkingSockets EXCLUDE_FROM_ALL)

add_subdirectory(Pong)
