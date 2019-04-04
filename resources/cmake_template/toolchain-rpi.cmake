SET(CMAKE_SYSTEM_NAME LINUX)
SET(CMAKE_SYSTEM_VERSION 1)

# set compiler paths using environmental variables
SET(CMAKE_C_COMPILER $ENV{RASP_PI_TOOL_PATH}/arm-bcm2708/arm-rpi-4.9.3-linux-gnueabihf/bin/arm-linux-gnueabihf-gcc)
SET(CMAKE_CXX_COMPILER $ENV{RASP_PI_TOOL_PATH}/arm-bcm2708/arm-rpi-4.9.3-linux-gnueabihf/bin/arm-linux-gnueabihf-gcc)

# set toolchain path using environmental variables
SET(CMAKE_FIND_ROOT_PATH $ENV{RASP_PI_TOOL_PATH}/arm-bcm2708/arm-rpi-4.9.3-linux-gnueabihf/arm-linux-gnueabihf/sysroot)

# User our definition for ocmpiler tools
SET (CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)

# search for libraries and headers in the target directories only
SET (CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
SET (CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)

add_definitions(-Wall -std=c11)
