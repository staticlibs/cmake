
cmake_minimum_required ( VERSION 2.8 )

macro ( staticlib_set_in_parent_scope _name _value )
    get_directory_property(${PROJECT_NAME}_has_parent PARENT_DIRECTORY)
    if( ${PROJECT_NAME}_has_parent )
      set ( ${_name} ${_value} PARENT_SCOPE )
    endif( ${PROJECT_NAME}_has_parent )
endmacro ( staticlib_set_in_parent_scope _name _value )

