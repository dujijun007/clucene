#defines a dword replacement

MACRO ( DEFINE_DWORD ) 

    IF ( HAVE_WINDOWS_H )
    	SET (CMAKE_EXTRA_INCLUDE_FILES "${CMAKE_EXTRA_INCLUDE_FILES};windows.h")
    ENDIF ( HAVE_WINDOWS_H )

    CHECK_TYPE_SIZE ( DWORD _CL_HAVE_TYPE_DWORD )

    IF ( _CL_HAVE_TYPE_DWORD )
        CHOOSE_TYPE(_cl_dword ${_CL_HAVE_TYPE_DWORD} unsigned "int;long;short" )
    ENDIF ( _CL_HAVE_TYPE_DWORD )
    
    SET ( CMAKE_EXTRA_INCLUDE_FILES )

ENDMACRO ( DEFINE_DWORD ) 