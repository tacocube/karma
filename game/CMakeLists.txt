cmake_minimum_required (VERSION 3.7.2)
project (game CXX)

set (SOURCE_FILES main.cpp)
list (
	APPEND SOURCE_FILES
	director.cpp
	gameobject.cpp
	scene.cpp
)

find_package (SFML REQUIRED COMPONENTS graphics window system)

add_executable (karma ${SOURCE_FILES})
target_include_directories (karma PRIVATE ${CMAKE_CURRENT_SOURCE_DIR})
target_link_libraries (karma PRIVATE sfml-graphics sfml-window sfml-system)

install (
	TARGETS karma
	RUNTIME DESTINATION bin
)
