CREATE OR REPLACE PACKAGE tifund_own.INVOCATION_PARAMS_CONTEXT
/*******************************************************************************
Empresa:    Explora Information Technologies
Proyecto:   Fundaciones

Nombre:     INVOCATION_PARAMS_CONTEXT
Proposito:  Para implementar manejo de parametros y valores por omisión a nivel
            de contexto Oracle

Cuando      Quien    Que
----------- -------- -----------------------------------------------------------
25-04-2012  mherrera Creación
22-Ago-2024 mherrera Renombra el package desde APP_NULLS_PARAMS_CONTEXT a
                     INVOCATION_PARAMS_CONTEXT
*******************************************************************************/
AS
    -- Constantes para identificar el package
    k_package   CONSTANT fdc_defs.package_name_t
                             := 'INVOCATION_PARAMS_CONTEXT' ;

    --* Subtipos, Tipos, Constantes del package

    -- Procedimientos y funciones
    PROCEDURE set_client_info (p_info IN VARCHAR2);

    PROCEDURE read_client_info (p_info OUT VARCHAR2);
END INVOCATION_PARAMS_CONTEXT;
/

