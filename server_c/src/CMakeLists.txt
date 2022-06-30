cmake_minimum_required(VERSION 2.6)

project(app)

file(GLOB app_SRCS "*.cpp")

add_executable (${PROJECT_NAME} ${app_SRCS})

target_link_libraries(${PROJECT_NAME} curl)
