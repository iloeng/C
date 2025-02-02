if (CARES_INCLUDE_DIRS AND CARES_LIBRARIES)
    set(CARES_FOUND TRUE)
else()
    pkg_check_modules(PKG_CONFIG_CARES QUIET libcares)

    message("PKG_CONFIG_CARES_FOUND=${PKG_CONFIG_CARES_FOUND}")
    message("PKG_CONFIG_CARES_INCLUDE_DIRS=${PKG_CONFIG_CARES_INCLUDE_DIRS}")
    message("PKG_CONFIG_CARES_LIBRARY_DIRS=${PKG_CONFIG_CARES_LIBRARY_DIRS}")
    message("PKG_CONFIG_CARES_INCLUDEDIR=${PKG_CONFIG_CARES_INCLUDEDIR}")
    message("PKG_CONFIG_CARES_LIBDIR=${PKG_CONFIG_CARES_LIBDIR}")
    message("PKG_CONFIG_CARES_VERSION=${PKG_CONFIG_CARES_VERSION}")
    message("PKG_CONFIG_CARES_LIBRARIES=${PKG_CONFIG_CARES_LIBRARIES}")
    message("PKG_CONFIG_CARES_LINK_LIBRARIES=${PKG_CONFIG_CARES_LINK_LIBRARIES}")

    if (PKG_CONFIG_CARES_FOUND)
        if (PKG_CONFIG_CARES_INCLUDE_DIRS)
        	set(CARES_INCLUDE_DIRS "${PKG_CONFIG_CARES_INCLUDE_DIRS}")
	    elseif (PKG_CONFIG_CARES_INCLUDEDIR)
        	set(CARES_INCLUDE_DIRS "${PKG_CONFIG_CARES_INCLUDEDIR}")
	    else()
		    find_path(CARES_INCLUDE_DIRS cares.h)
	    endif()

        set(CARES_LIBRARIES ${PKG_CONFIG_CARES_LINK_LIBRARIES})

        if (NOT TARGET  CARES::libcares)
            add_library(CARES::libcares INTERFACE IMPORTED)
            set_target_properties(CARES::libcares PROPERTIES
                INTERFACE_INCLUDE_DIRECTORIES "${CARES_INCLUDE_DIRS}"
                INTERFACE_LINK_LIBRARIES      "${CARES_LIBRARIES}"
            )
        endif()

        if (PKG_CONFIG_CARES_VERSION)
            set(CARES_VERSION_STRING ${PKG_CONFIG_CARES_VERSION})
        endif()
    endif()
endif()

include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(CARES REQUIRED_VARS CARES_LIBRARIES CARES_INCLUDE_DIRS VERSION_VAR CARES_VERSION)

mark_as_advanced(CARES_INCLUDE_DIRS CARES_LIBRARIES)
