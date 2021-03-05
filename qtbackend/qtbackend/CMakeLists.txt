cmake_minimum_required(VERSION 3.14)

project(qtbackend LANGUAGES CXX)

set(CMAKE_INCLUDE_CURRENT_DIR ON)
set(CMAKE_AUTOUIC ON)
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(QT NAMES Qt6 Qt5 COMPONENTS Core REQUIRED)
find_package(Qt${QT_VERSION_MAJOR} COMPONENTS Core REQUIRED)
find_package(Qt${QT_VERSION_MAJOR} COMPONENTS Network REQUIRED)

add_library(qtbackend STATIC
  interactor.cpp
  interactor.h
  internaltypes.h
)

target_link_libraries(qtbackend PRIVATE Qt${QT_VERSION_MAJOR}::Core)

target_compile_definitions(qtbackend PRIVATE QTBACKEND_LIBRARY)
