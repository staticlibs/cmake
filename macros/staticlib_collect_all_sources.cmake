
cmake_minimum_required ( VERSION 2.8 )

macro ( staticlib_collect_all_sources _projectname _sourcedir)
    include_directories (
        ${STATICLIB_CXX_INCLUDE_DIR}
        ${STATICLIB_CXX_SOURCES_DIR} )
    file ( GLOB_RECURSE ${_projectname}_SRC
        ${_sourcedir}/${STATICLIB_CXX_SOURCES_DIR}/*${STATICLIB_CXX_POSTFIX} )
endmacro ( staticlib_collect_all_sources _projectname _sourcedir)

