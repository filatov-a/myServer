cmake_minimum_required(VERSION 3.20)
project(app VERSION 1.0)

file(GLOB app_SRCS "*.cc")

# add_executable(${PROJECT_NAME} main.cpp) #test
add_executable(${PROJECT_NAME} ${app_SRCS})

# specify the C++ standard
set_property(TARGET ${PROJECT_NAME} PROPERTY CXX_STANDARD 23)

target_link_libraries(${PROJECT_NAME} curl)
