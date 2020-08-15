find_package(Magnum REQUIRED GL Sdl2Application)

set_directory_properties(PROPERTIES CORRADE_USE_PEDANTIC_FLAGS ON)

add_executable(Pong main.cpp)
target_link_libraries(Pong PRIVATE
    Magnum::Application
    Magnum::GL
    Magnum::Magnum
    GameNetworkingSockets)

# Make the executable a default target to build & run in Visual Studio
set_property(DIRECTORY ${PROJECT_SOURCE_DIR} PROPERTY VS_STARTUP_PROJECT Pong)
