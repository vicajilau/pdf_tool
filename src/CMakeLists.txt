# The Flutter tooling requires that developers have CMake 3.10 or later
# installed. You should not increase this version, as doing so will cause
# the plugin to fail to compile for some customers of the plugin.
cmake_minimum_required(VERSION 3.10)

project(pdf_tool_library VERSION 0.0.1 LANGUAGES C)

add_library(pdf_tool SHARED
  "pdf_tool.c"
)

set_target_properties(pdf_tool PROPERTIES
  PUBLIC_HEADER pdf_tool.h
  OUTPUT_NAME "pdf_tool"
)

target_compile_definitions(pdf_tool PUBLIC DART_SHARED_LIB)
