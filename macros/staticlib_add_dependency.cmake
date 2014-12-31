
cmake_minimum_required ( VERSION 2.8 )

macro ( staticlib_add_dependency _depprojectpath )
    add_subdirectory ( ${STATICLIB_PARENT_DIR}/${_depprojectpath}
            ${CMAKE_BINARY_DIR}/${_depprojectpath} )
endmacro ( staticlib_add_dependency _depprojectname )

