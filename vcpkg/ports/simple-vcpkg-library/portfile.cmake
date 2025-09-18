set(GIT_REF ad16a2e0ccaaaef0d06a9cb79bb16df8fe936c97)

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO drescherjm/simple_vcpkg_library
    REF ${GIT_REF} # commit or tag
    SHA512 ad5757f62b95b967625370bd098adb3d0a07b3e92f1ec803ae005c5e0a98cd2ffb6658fac18fb3cd3dd10ef951e5031652b35b8ec1cfafe4d03155bca4ae54f1
)

vcpkg_cmake_configure(
    SOURCE_PATH "${SOURCE_PATH}"
)

vcpkg_cmake_build()
vcpkg_cmake_install()

# Fixup cmake config locations and paths
vcpkg_cmake_config_fixup(PACKAGE_NAME SimpleLibraryExample CONFIG_PATH lib/cmake/SimpleLibraryExample)

# Install license into share/${PORT}/
file(INSTALL "${SOURCE_PATH}/LICENSE" DESTINATION "${CURRENT_PACKAGES_DIR}/share/${PORT}")
