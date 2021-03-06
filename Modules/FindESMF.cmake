# This module looks for environment variables detailing where ESMF lib is
# If variables are not set, ESMF will be built from external source 

if(DEFINED ENV{ESMF} )
  set(ESMF_LIB $ENV{ESMF_LIB} CACHE STRING "ESMF Library Location" )
  set(ESMF_LIB_STATIC $ENV{ESMF_LIB_STATIC} CACHE STRING "ESMF static Library Location" )
  set(ESMF_INC $ENV{ESMF_INC} CACHE STRING "ESMF Include Location" )
endif()

