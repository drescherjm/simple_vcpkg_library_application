set(GIT_REF_of_library 1d050ed372fdb0374a272965a55375d0a4a0a13f)

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO drescherjm/simple_vcpkg_library
    REF ${GIT_REF_of_library} 
    SHA512 0d528823cd6cbaafa786bc68aacd650edf945fc1c28fdcbc7a570b598ae8e87993cce3573a0ffeae28a5d15cefccf0e160ef51a209d674cfe4179faa278a4d94
	#Note: The SHA512 will need to change if you change the GIT_REF_of_library. The next CMake configure will fail and tell you
	#the new SHA512 code. Copy and paste the note: Actual  : SHA512 hash code above.
)

vcpkg_cmake_configure(
    SOURCE_PATH "${SOURCE_PATH}"
)

vcpkg_cmake_build()
vcpkg_cmake_install()

# Fixup cmake config locations and paths. This is essential for vcpkg to setup the SimpleLibraryExampleConfig.cmake file 
# and setup each configuration for multiconfig generators like Visual Studio 2022. 
# Remember that vcpkg builds the Debug and Release config then maps the other configs: MinSizeRel, RelWithDebInfo to
# use the binaries created for the Release config. 
vcpkg_cmake_config_fixup(PACKAGE_NAME SimpleLibraryExample CONFIG_PATH lib/cmake/SimpleLibraryExample)

# Install license into share/${PORT}/
file(INSTALL "${SOURCE_PATH}/LICENSE" DESTINATION "${CURRENT_PACKAGES_DIR}/share/${PORT}")
