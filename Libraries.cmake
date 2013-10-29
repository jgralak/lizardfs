find_package(ZLIB REQUIRED)
find_package(Socket)
find_package(Threads)
find_package(Boost COMPONENTS filesystem system regex thread)

find_library(FUSE_LIBRARY fuse)
message(STATUS "FUSE_LIBRARY: ${FUSE_LIBRARY}")

##############
# GoogleTest #
##############
if(ENABLE_TESTS)
  if(NOT Boost_FOUND)
    message(FATAL_ERROR "Boost is required by LizardFS tests")
  endif()
  set(BUILD_TESTS ON)
endif()
