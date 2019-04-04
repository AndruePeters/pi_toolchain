cmake_minimum_required(VERSION 3.0)

# have cmake find our pthreads library within our toolchain
set (CMAKE_THREAD_PREFER_PTHREAD TRUE)
find_package(Threads REQUIRED)

# add all *.c files as sources
FILE (GLOB SRC_FILES *.c)

#make this output a shared library (with .so output)
add_library (wiringPi SHARED ${SRC_FILES})

#be sure to include the current source directory for header files
target_include_directories (wiringPi PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})
# add the following required libraries
# Threads, Math, Crypt, and RealTime
target_link_libraries(wiringPi ${CMAKE_THREAD_LIBS_INIT} crypt m rt)
