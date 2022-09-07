#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "OpenSiv3DScript" for configuration "Release"
set_property(TARGET OpenSiv3DScript APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(OpenSiv3DScript PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libSiv3DScript.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS OpenSiv3DScript )
list(APPEND _IMPORT_CHECK_FILES_FOR_OpenSiv3DScript "${_IMPORT_PREFIX}/lib/libSiv3DScript.a" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
