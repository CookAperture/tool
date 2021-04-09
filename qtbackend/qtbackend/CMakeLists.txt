cmake_minimum_required(VERSION 3.14)

project(qtbackend LANGUAGES CXX VERSION 0.0.1 DESCRIPTION "todo")

set(CMAKE_INCLUDE_CURRENT_DIR ON)
set(CMAKE_AUTOUIC ON)
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

#--------------configure-here------
set(ABSOLUTE_CMAKE_MODULE_PATH "G:/Software/Qt/6.0.1/mingw81_64/lib/cmake/Qt6/")
set(ABSOLUTE_CMAKE_PREFIX_PATH "G:/Software/Qt/6.0.1/mingw81_64/lib/cmake/")
#----------------------------------

list(APPEND CMAKE_MODULE_PATH ${ABSOLUTE_CMAKE_MODULE_PATH})
list(APPEND CMAKE_PREFIX_PATH ${ABSOLUTE_CMAKE_PREFIX_PATH})

find_package(QT NAMES Qt6 Qt5 COMPONENTS Core REQUIRED)
find_package(Qt${QT_VERSION_MAJOR} COMPONENTS Core REQUIRED)
find_package(Qt${QT_VERSION_MAJOR} COMPONENTS Network REQUIRED)

add_library(qtbackend SHARED
  interactor.cpp
  interactor.h
  internaltypes.h
)

set_target_properties(qtbackend PROPERTIES VERSION ${PROJECT_VERSION})
target_link_libraries(qtbackend PRIVATE Qt${QT_VERSION_MAJOR}::Core)
target_compile_definitions(qtbackend PRIVATE QTBACKEND_LIBRARY)

install(
	TARGETS qtbackend
	RUNTIME DESTINATION ${PROJECT_BINARY_DIR}/bin
	LIBRARY DESTINATION ${PROJECT_BINARY_DIR}/bin
)
