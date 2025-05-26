cmake_minimum_required(VERSION 3.10)

project(LITD
  LANGUAGES C
)

set(CMAKE_C_STANDARD)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

add_executable(LITD
  LITDGame/main.c
)


add_subdirectory(LITDGame)


target_include_directories(LITD PUBLIC
  ${CMAKE_CURRENT_SOURCE_DIR}/extern
)

if(WIN32)
  target_link_directories(LITD PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/extern/glfw/mingw32)
else()
  target_link_directories(LITD PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/extern/glfw/gcc)
endif()

target_link_libraries(LITD PRIVATE
    glfw3
    m
    pthread
)





