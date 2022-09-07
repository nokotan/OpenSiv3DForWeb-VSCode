#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "OpenSiv3DWebGPU" for configuration "Release"
set_property(TARGET OpenSiv3DWebGPU APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(OpenSiv3DWebGPU PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libSiv3DWebGPU.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS OpenSiv3DWebGPU )
list(APPEND _IMPORT_CHECK_FILES_FOR_OpenSiv3DWebGPU "${_IMPORT_PREFIX}/lib/libSiv3DWebGPU.a" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
