cmake_minimum_required(VERSION 3.14)

project(qtbackend LANGUAGES CXX)

set(CMAKE_INCLUDE_CURRENT_DIR ON)
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

set(PROJECT_SOURCES
  gmock.h
  gtest.h
  gmock-gtest-all.cc
  tests_Interactor.cpp
  )
  
set(BACKEND_INCLUDE_DIR "I:\\Repositories\\tool\\qtbackend\\qtbackend")
set(BACKEND "I:/Repositories/tool/qtbackend/qtbackend/build/libqtbackend.dll")
  
include_directories(${BACKEND_INCLUDE_DIR})
set(LIBRARIES ${BACKEND})

add_executable(tests ${PROJECT_SOURCES})
target_link_libraries(tests ${LIBRARIES})