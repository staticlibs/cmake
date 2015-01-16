
cmake_minimum_required ( VERSION 2.8 )

macro ( staticlib_set_global _name _value )
    # http://stackoverflow.com/a/25130567/314015
    set ( ${_name} ${_value} CACHE INTERNAL ${_name} )
endmacro ( )

