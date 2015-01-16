
cmake_minimum_required ( VERSION 2.8 )

macro ( staticlib_add_dependency _depprojectname )
    # http://stackoverflow.com/a/23326955/314015
    if ( NOT STATICLIB_LIBRARIES MATCHES "(^|.* )${PROJECT_NAME}( .*|$)" )
        staticlib_set_global ( STATICLIB_LIBRARIES "${STATICLIB_LIBRARIES} ${PROJECT_NAME}" )
    endif ( )
    if ( NOT STATICLIB_LIBRARIES MATCHES "(^|.* )${_depprojectname}( .*|$)" )
        staticlib_set_global ( STATICLIB_LIBRARIES "${STATICLIB_LIBRARIES} ${_depprojectname}" )
        if ( NOT IS_DIRECTORY ${CMAKE_BINARY_DIR}/${_depprojectname})
            add_subdirectory ( ${STATICLIB_PARENT_DIR}/${_depprojectname}
                    ${CMAKE_BINARY_DIR}/${_depprojectname} )
        endif ( )
    endif ( )
    include_directories ( ${${_depprojectname}_INCLUDES} )
endmacro ( )

