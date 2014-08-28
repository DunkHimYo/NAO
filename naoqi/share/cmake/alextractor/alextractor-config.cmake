# This is an autogenerated file. Do not edit

get_filename_component(_cur_dir ${CMAKE_CURRENT_LIST_FILE} PATH)
set(_root_dir "${_cur_dir}/../../../")
get_filename_component(ROOT_DIR ${_root_dir} ABSOLUTE)

 
set(ALEXTRACTOR_INCLUDE_DIRS "${ROOT_DIR}/include;" CACHE STRING "" FORCE)
mark_as_advanced(ALEXTRACTOR_INCLUDE_DIRS)
   

find_library(ALEXTRACTOR_DEBUG_LIBRARY alextractor_d)
find_library(ALEXTRACTOR_LIBRARY       alextractor)


if (ALEXTRACTOR_DEBUG_LIBRARY)
  set(ALEXTRACTOR_LIBRARIES optimized;${ALEXTRACTOR_LIBRARY};debug;${ALEXTRACTOR_DEBUG_LIBRARY})
else()
  set(ALEXTRACTOR_LIBRARIES ${ALEXTRACTOR_LIBRARY})
endif()

set(ALEXTRACTOR_LIBRARIES ${ALEXTRACTOR_LIBRARIES} CACHE INTERNAL "" FORCE)
 
include(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(ALEXTRACTOR DEFAULT_MSG
  ALEXTRACTOR_LIBRARIES
  ALEXTRACTOR_INCLUDE_DIRS
)
set(ALEXTRACTOR_PACKAGE_FOUND ${ALEXTRACTOR_FOUND} CACHE INTERNAL "" FORCE)
 
set(ALEXTRACTOR_DEPENDS "ALCOMMON;ALCOMMON-INTERNAL;ALSOAP;RTTOOLS;ALTHREAD;BOOST_SIGNALS;BOOST_PROGRAM_OPTIONS;ALVALUE;TINYXML;RT;QI;ALERROR;BOOST;BOOST_FILESYSTEM;BOOST_THREAD;BOOST_SYSTEM;PTHREAD;DL" CACHE INTERNAL "" FORCE)
 