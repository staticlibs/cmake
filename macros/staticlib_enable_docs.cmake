
cmake_minimum_required ( VERSION 2.8 )

macro ( staticlib_enable_docs )
    option( STATICLIB_GENERATE_DOCS "generate docs" OFF )
    if ( STATICLIB_GENERATE_DOCS ) 
        configure_file ( ${STATICLIB_PARENT_DIR}/staticlib_util_cmake/doxygen/Doxyfile 
            ${CMAKE_BINARY_DIR}/Doxyfile )
        execute_process ( COMMAND doxygen ${CMAKE_BINARY_DIR}/Doxyfile )
    endif ( STATICLIB_GENERATE_DOCS ) 
endmacro ( staticlib_enable_docs )

