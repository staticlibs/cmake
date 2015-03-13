
cmake_minimum_required ( VERSION 2.8.12 )
# call add_subdirectory using 'deps' prefix only if specified module is not yet added to main project
macro ( staticlib_add_subdirectory _dep_name )
    if ( NOT TARGET ${_dep_name} )
        message ( STATUS "Adding dependency: [${_dep_name}]" )
        add_subdirectory ( ${CMAKE_CURRENT_LIST_DIR}/deps/${_dep_name} ${STATICLIB_ROOT_BINARY_DIR}/${_dep_name} )
    endif ( )
endmacro ( )
