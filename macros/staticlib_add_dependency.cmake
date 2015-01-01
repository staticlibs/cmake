
cmake_minimum_required ( VERSION 2.8 )

macro ( staticlib_add_dependency _depprojectname )
    if ( NOT IS_DIRECTORY ${CMAKE_BINARY_DIR}/${_depprojectname})
        add_subdirectory ( ${STATICLIB_PARENT_DIR}/${_depprojectname}
                ${CMAKE_BINARY_DIR}/${_depprojectname} )
    endif ( NOT IS_DIRECTORY ${CMAKE_BINARY_DIR}/${_depprojectname})
    include_directories ( ${${_depprojectname}_INCLUDES} )
endmacro ( staticlib_add_dependency _depprojectname )

