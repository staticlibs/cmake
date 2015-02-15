
cmake_minimum_required ( VERSION 2.8 )

macro ( staticlib_enable_docs )
    option( STATICLIB_GENERATE_DOCS "generate docs" OFF )
    if ( STATICLIB_GENERATE_DOCS ) 
        configure_file ( ${CMAKE_CURRENT_LIST_DIR}/cmake/doxygen/Doxyfile 
            ${CMAKE_CURRENT_BINARY_DIR}/Doxyfile )
        execute_process ( COMMAND doxygen ${CMAKE_CURRENT_BINARY_DIR}/Doxyfile )
    endif ( ) 
endmacro ( )

