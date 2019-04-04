cmake_minimum_required (VERSION 3.0)

# Name our project
project (gettingstarted)

# Create a variable that holds the path to our libwiringPi.so file
# set (WPI_PATH /home/druepeters/Development/RPi_Cross/lib_src/wiringPi/wiringPi)
#set (rf24_path /home/druepeters/Development/RPi_Cross/lib_src/RF24-Master)

# Add the local ‘include’ directory and the wiringPi directory to grab headers
# include_directories (include ${WPI_PATH})
include_directories ( ${CMAKE_CURRENT_SOURCE_DIR})

# Actually find the wiringPi library object
#find_library(RF24_LIB lrf24 HINTS ${rf24_path} NO_CMAKE_FIND_ROOT_PATH)
# Alert the user if we do not find it
#if(NOT RF24_LIB)
# message(FATAL_ERROR “wiringPi library not found”)
#endif()

# Add all the *.c files in our source directory to our executable output
FILE(GLOB SRC_FILES *.cpp)
message(${SRC_FILES})
add_executable(gettingstarted ${SRC_FILES})

# Link the pre-compiled wiringPi library to the executable we just declared 
target_link_libraries(gettingstarted wiringPi rf24)
