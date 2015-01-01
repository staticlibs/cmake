
cmake_minimum_required ( VERSION 2.8 )

macro ( staticlib_collect_all_sources )
    include_directories ( ${STATICLIB_CXX_INCLUDE_DIR} )
    file ( GLOB_RECURSE ${PROJECT_NAME}_SRC
        ${CMAKE_CURRENT_LIST_DIR}/${STATICLIB_CXX_SOURCES_DIR}/*${STATICLIB_CXX_POSTFIX} )
endmacro ( staticlib_collect_all_sources )

