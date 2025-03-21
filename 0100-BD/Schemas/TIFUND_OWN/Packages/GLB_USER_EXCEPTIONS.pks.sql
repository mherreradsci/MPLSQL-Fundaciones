CREATE OR REPLACE PACKAGE "TIFUND_OWN"."GLB_USER_EXCEPTIONS"
-- TODO: Falta header
IS
    k_package          CONSTANT fdc_defs.package_name_t := 'GLB_USER_EXCEPTIONS';

    SUBTYPE ue_codigo_error_t IS NUMBER (6);

    --* UTL_ERROR
    
    ug_error_fatal                  EXCEPTION;
    k_ue_error_fatal                ue_codigo_error_t :=            -20999 ;
    PRAGMA EXCEPTION_INIT (ug_error_fatal,                          -20999);

    --* Directorios
    ue_directorio_no_existe         EXCEPTION;
    k_ue_directorio_no_existe       ue_codigo_error_t :=            -20001;
    PRAGMA EXCEPTION_INIT (ue_directorio_no_existe,                 -20001);
    
    --* UTL_OUTPUT
    ue_tamano_trozo_invalido        EXCEPTION;
    k_ue_tamano_trozo_invalido      ue_codigo_error_t :=            -20002;
    PRAGMA EXCEPTION_INIT (ue_tamano_trozo_invalido,                -20002);
    

    -- *************************************************************************
    --* Redefinición para excepciones que no existen
    -- *************************************************************************

    --* Compilación
    -- -24344 success with compilation error
    ue_error_de_compilacion     EXCEPTION;
    k_ue_error_de_compilacion   ue_codigo_error_t :=        -24344;
    PRAGMA EXCEPTION_INIT (ue_error_de_compilacion,         -24344);

END glb_user_exceptions;
/
