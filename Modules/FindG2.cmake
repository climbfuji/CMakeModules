# This module looks for environment variables detailing where G2 lib is
# If variables are not set, G2 will be built from external source 
if(DEFINED ENV{G2_LIBd} )
  message("HEY!! setting G2 library via environment variable")
  set(G2_LIBd $ENV{G2_LIBd} CACHE STRING "G2 Library Location" )
  set(G2_LIB4 $ENV{G2_LIB4} CACHE STRING "G2_4 Library Location" )
  set(G2_INC4 $ENV{G2_INC4} CACHE STRING "G2_4 Include Location" )
  set(G2_INCd $ENV{G2_INCd} CACHE STRING "G2_d Include Location" )
  set(G2_LIBd_PATH ${G2_LIBd} CACHE STRING "G2 Library Location" )
  set(G2_LIB4_PATH ${G2_LIB4} CACHE STRING "G2_4 Library Location" )
  set( G2_LIBd_PATH ${G2_LIBd} CACHE STRING "G2 Library Location" )
  set( G2_LIB4_PATH ${G2_LIB4} CACHE STRING "G2_4 Library Location" )
else()
  set(G2_VER 3.1.0)
  find_library( G2_LIBd 
    NAMES libg2_v${G2_VER}_d.a 
    HINTS 
      ${CMAKE_INSTALL_PREFIX}/lib
    )
  find_library( G2_LIB4 
    NAMES libg2_v${G2_VER}_4.a 
    HINTS 
      ${CMAKE_INSTALL_PREFIX}/lib
    )
  set(G2_INC4 ${CMAKE_INSTALL_PREFIX}/include_4 CACHE STRING "G2_4 Include Location" )
  set(G2_INCd ${CMAKE_INSTALL_PREFIX}/include_d CACHE STRING "G2_d Include Location" )
endif()


