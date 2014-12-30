
cmake_minimum_required ( VERSION 2.8 )

macro ( staticlib_enable_testing _projectname _sourcedir )
    enable_testing ( )
    file ( GLOB ${_projectname}_TEST_SRC
         RELATIVE ${_sourcedir}/${STATICLIB_CXX_TEST_DIR}
         ${_sourcedir}/${STATICLIB_CXX_TEST_DIR}/*${STATICLIB_CXX_TEST_POSTFIX} )
    foreach ( testsourcefile ${${_projectname}_TEST_SRC} )
        string ( REPLACE ${STATICLIB_CXX_POSTFIX} "" testname ${testsourcefile} )
        add_executable ( ${testname} ${_sourcedir}/${STATICLIB_CXX_TEST_DIR}/${testsourcefile} )
        target_link_libraries ( ${testname} ${_projectname} )
        if ( DEFINED CMAKE_MEMORYCHECK_COMMAND)
            add_test ( ${testname} ${CMAKE_MEMORYCHECK_COMMAND} ${CMAKE_MEMORYCHECK_COMMAND_OPTIONS} ${CMAKE_BINARY_DIR}/${testname} )
        else ( DEFINED CMAKE_MEMORYCHECK_COMMAND)
            add_test ( ${testname} ${CMAKE_BINARY_DIR}/${testname} )
        endif ( DEFINED CMAKE_MEMORYCHECK_COMMAND)
    endforeach ( testsourcefile ${${_projectname}_TEST_SRC} )
endmacro ( staticlib_enable_testing _projectname _sourcedir )

