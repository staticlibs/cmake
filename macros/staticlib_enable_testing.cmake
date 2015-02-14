
cmake_minimum_required ( VERSION 2.8 )

macro ( staticlib_enable_testing _libs_var_name )
    enable_testing ( )
    include_directories ( ${CMAKE_CURRENT_LIST_DIR}/test )
    file ( GLOB ${PROJECT_NAME}_TEST_SRC
            RELATIVE ${CMAKE_CURRENT_LIST_DIR}/test
            ${CMAKE_CURRENT_LIST_DIR}/test/*_test.cpp )
    foreach ( _testsrc ${${PROJECT_NAME}_TEST_SRC} )
        string ( REPLACE .cpp "" _testname ${_testsrc} )
        add_executable ( ${_testname} ${CMAKE_CURRENT_LIST_DIR}/test/${_testsrc} )
        target_link_libraries ( ${_testname} ${${_libs_var_name}} )
        if ( DEFINED CMAKE_MEMORYCHECK_COMMAND )
            add_test ( ${_testname} 
                    ${CMAKE_MEMORYCHECK_COMMAND} ${CMAKE_MEMORYCHECK_COMMAND_OPTIONS} 
                    ${CMAKE_RUNTIME_OUTPUT_DIRECTORY}/${_testname} )
        else ( )
            add_test ( ${_testname} ${CMAKE_RUNTIME_OUTPUT_DIRECTORY}/${_testname} )
        endif ( )
    endforeach ( )
endmacro ( )

