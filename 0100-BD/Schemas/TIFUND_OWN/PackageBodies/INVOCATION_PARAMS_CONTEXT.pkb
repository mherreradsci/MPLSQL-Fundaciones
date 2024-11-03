CREATE OR REPLACE PACKAGE BODY tifund_own.INVOCATION_PARAMS_CONTEXT
/*******************************************************************************
Empresa:    Explora Information Technologies
Proyecto:   Fundaciones

Nombre:     INVOCATION_PARAMS_CONTEXT
Proposito:  Context Manager: Para implementar en los procedimientos de
            update por columnas que solo se pasen por parámetro, las 
            columnas que reciben cambios.

Cuando      Quien    Que
----------- -------- -----------------------------------------------------------
25-04-2012  mherrera Creación
*******************************************************************************/
AS

    K_CONTEXT_NAME constant varchar2(30) := 'FDC_NULL_CTX';
    K_CONTEXT_PARAMETER_INFO constant varchar2(30) := 'param_info';
    
    
    PROCEDURE set_client_info (p_info IN VARCHAR2)
    IS
        -- Constantes para identificar el package/programa que se está ejecutando
        k_programa   CONSTANT fdc_defs.program_name_t := 'set_client_info';
        k_modulo     CONSTANT fdc_defs.module_name_t
                                  := k_package || '.' || k_programa ;
    -- Variables, constantes, tipos y subtipos locales

    BEGIN
        --*
        --* Implementación.
        DBMS_SESSION.set_context (K_CONTEXT_NAME, K_CONTEXT_PARAMETER_INFO, p_info);
    --* Fin Implementación
    --*

    EXCEPTION
        WHEN OTHERS THEN
            utl_error.informa (p_programa   => k_modulo);
            raise;
    END set_client_info;

    PROCEDURE read_client_info (p_info OUT VARCHAR2)
    IS
        -- Constantes para identificar el package/programa que se está ejecutando
        k_programa   CONSTANT fdc_defs.program_name_t := 'read_client_info';
        k_modulo     CONSTANT fdc_defs.module_name_t
                                  := k_package || '.' || k_programa ;
    -- Variables, constantes, tipos y subtipos locales

    BEGIN
        --*
        --* Implementación.
        p_info := SYS_CONTEXT (K_CONTEXT_NAME, K_CONTEXT_PARAMETER_INFO);
    --* Fin Implementación
    --*

    EXCEPTION
        WHEN OTHERS THEN
            utl_error.informa (p_programa   => k_modulo);
            raise;
    END read_client_info;

END INVOCATION_PARAMS_CONTEXT;
/
