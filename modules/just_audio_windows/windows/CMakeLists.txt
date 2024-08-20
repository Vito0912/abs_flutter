cmake_minimum_required(VERSION 3.14)
set(PROJECT_NAME "just_audio_windows")
project(${PROJECT_NAME} LANGUAGES CXX)
set(CPPWINRT_VERSION 2.0.210806.1)
set(CMAKE_CXX_STANDARD 17)

# This value is used when generating builds using this plugin, so it must
# not be changed
set(PLUGIN_NAME "just_audio_windows_plugin")

add_library(${PLUGIN_NAME} SHARED
  "just_audio_windows_plugin.cpp"
  "player.hpp"
)
apply_standard_settings(${PLUGIN_NAME})
set_target_properties(${PLUGIN_NAME} PROPERTIES
  CXX_VISIBILITY_PRESET hidden)
target_compile_definitions(${PLUGIN_NAME} PRIVATE FLUTTER_PLUGIN_IMPL)
target_include_directories(${PLUGIN_NAME} INTERFACE
  "${CMAKE_CURRENT_SOURCE_DIR}/include")
target_link_libraries(${PLUGIN_NAME} PRIVATE flutter flutter_wrapper_plugin)

# List of absolute paths to libraries that should be bundled with the plugin
set(just_audio_windows_bundled_libraries
  ""
  PARENT_SCOPE
)
