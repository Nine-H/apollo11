find_package (PkgConfig)

pkg_check_modules (DEPS REQUIRED
    gtk+-3.0
    switchboard-2.0
    granite
)

add_definitions (${DEPS_CFLAGS})
link_directories (${DEPS_LIBRARY_DIRS})

find_package (Vala REQUIRED)
include (ValaVersion)
ensure_vala_version ("0.22.0" MINIMUM)

include (ValaPrecompile)
vala_precompile (VALA_C
    src/plug.vala
PACKAGES
    gtk+-3.0
    switchboard-2.0
    granite
)

add_library (${PLUGNAME} MODULE ${VALA_C})
target_link_libraries(${PLUGNAME} ${DEPS_LIBRARIES})

install (TARGETS ${PLUGNAME} DESTINATION ${PKGDATADIR})
