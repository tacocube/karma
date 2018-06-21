cmake_minimum_required (VERSION 3.7.2)
project (Karma NONE)

set (CMAKE_MODULE_PATH "${CMAKE_CURRENT_SOURCE_DIR}/cmake")

include (ExternalProject)
include (BuildLocation)

set (Karma_INSTALL_PREFIX "${Karma_BINARY_DIR}/prefix")
set (
	DEFAULT_ARGS
	"-DCMAKE_PREFIX_PATH:PATH=${Karma_INSTALL_PREFIX};${CMAKE_PREFIX_PATH}"
	"-DCMAKE_INSTALL_PREFIX:PATH=${Karma_INSTALL_PREFIX}"
)

# Include third party libraries
include (External_SFML)
include (External_game)
