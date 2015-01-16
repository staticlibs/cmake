
cmake_minimum_required ( VERSION 2.8 )

macro ( staticlib_enable_testing _libs_var_name )
    get_directory_property(${PROJECT_NAME}_has_parent PARENT_DIRECTORY)
    if ( NOT ${PROJECT_NAME}_has_parent AND NOT ${CMAKE_SYSTEM_NAME} MATCHES "Generic" )
        enable_testing ( )
        include_directories ( ${CMAKE_CURRENT_LIST_DIR}/${STATICLIB_CXX_TEST_DIR} )
        file ( GLOB ${PROJECT_NAME}_TEST_SRC
                RELATIVE ${CMAKE_CURRENT_LIST_DIR}/${STATICLIB_CXX_TEST_DIR}
                ${CMAKE_CURRENT_LIST_DIR}/${STATICLIB_CXX_TEST_DIR}/*${STATICLIB_CXX_TEST_POSTFIX} )
        foreach ( testsourcefile ${${PROJECT_NAME}_TEST_SRC} )
            string ( REPLACE ${STATICLIB_CXX_POSTFIX} "" testname ${testsourcefile} )
            add_executable ( ${testname} ${CMAKE_CURRENT_LIST_DIR}/${STATICLIB_CXX_TEST_DIR}/${testsourcefile} )
            target_link_libraries ( ${testname} ${${_libs_var_name}} )
            if ( DEFINED CMAKE_MEMORYCHECK_COMMAND )
                add_test ( ${testname} 
                        ${CMAKE_MEMORYCHECK_COMMAND} ${CMAKE_MEMORYCHECK_COMMAND_OPTIONS} 
                        ${CMAKE_BINARY_DIR}/${testname} )
            else ( )
                add_test ( ${testname} ${CMAKE_BINARY_DIR}/${testname} )
            endif ( )
        endforeach ( )
    endif ( )
endmacro ( )

