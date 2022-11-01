#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "Siv3D::Siv3D" for configuration "Release"
set_property(TARGET Siv3D::Siv3D APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(Siv3D::Siv3D PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "C;CXX"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libSiv3D.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS Siv3D::Siv3D )
list(APPEND _IMPORT_CHECK_FILES_FOR_Siv3D::Siv3D "${_IMPORT_PREFIX}/lib/libSiv3D.a" )

# Import target "Siv3D::Siv3DBrowserImageEncodeDecode" for configuration "Release"
set_property(TARGET Siv3D::Siv3DBrowserImageEncodeDecode APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(Siv3D::Siv3DBrowserImageEncodeDecode PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libSiv3DBrowserImageEncodeDecode.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS Siv3D::Siv3DBrowserImageEncodeDecode )
list(APPEND _IMPORT_CHECK_FILES_FOR_Siv3D::Siv3DBrowserImageEncodeDecode "${_IMPORT_PREFIX}/lib/libSiv3DBrowserImageEncodeDecode.a" )

# Import target "Siv3D::Siv3DScript" for configuration "Release"
set_property(TARGET Siv3D::Siv3DScript APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(Siv3D::Siv3DScript PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libSiv3DScript.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS Siv3D::Siv3DScript )
list(APPEND _IMPORT_CHECK_FILES_FOR_Siv3D::Siv3DScript "${_IMPORT_PREFIX}/lib/libSiv3DScript.a" )

# Import target "Siv3D::Siv3DWebGPU" for configuration "Release"
set_property(TARGET Siv3D::Siv3DWebGPU APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(Siv3D::Siv3DWebGPU PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libSiv3DWebGPU.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS Siv3D::Siv3DWebGPU )
list(APPEND _IMPORT_CHECK_FILES_FOR_Siv3D::Siv3DWebGPU "${_IMPORT_PREFIX}/lib/libSiv3DWebGPU.a" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
