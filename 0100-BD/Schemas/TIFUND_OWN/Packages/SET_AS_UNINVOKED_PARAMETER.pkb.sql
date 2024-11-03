CREATE OR REPLACE PACKAGE BODY tifund_own.set_as_uninvoked_parameter
/*******************************************************************************
Empresa:    Explora Information Technologies
Proyecto:   Fundaciones

Nombre:     SET_AS_UNINVOKED_PARAMETER
Proposito:  Para implementar manejo de parametros y valores por omisión

Cuando      Quien    Que
----------- -------- -----------------------------------------------------------
17-04-2012  mherrera Creación
*******************************************************************************/
AS
    PROCEDURE append_info (p_info VARCHAR2)
    IS
        v_current_info   VARCHAR2 (2000);
    BEGIN
        invocation_params_context.read_client_info (v_current_info);
        invocation_params_context.set_client_info (
            NVL (v_current_info, '#') || p_info || '#');
    END append_info;

    FUNCTION nldate (p_name VARCHAR2)
        RETURN DATE
    IS
    BEGIN
        append_info (p_name);
        RETURN NULL;
    END nldate;

    FUNCTION nlvc2 (p_name VARCHAR2)
        RETURN VARCHAR2
    IS
    BEGIN
        append_info (p_name);
        RETURN NULL;
    END nlvc2;

    FUNCTION nlnum (p_name VARCHAR2)
        RETURN NUMBER
    IS
    BEGIN
        append_info (p_name);
        RETURN NULL;
    END nlnum;

    FUNCTION nlclob (p_name VARCHAR2)
        RETURN CLOB
    IS
    BEGIN
        append_info (p_name);
        RETURN NULL;
    END nlclob;

    FUNCTION nlblob (p_name VARCHAR2)
        RETURN BLOB
    IS
    BEGIN
        append_info (p_name);
        RETURN NULL;
    END nlblob;

    FUNCTION nlts (p_name VARCHAR2)
        RETURN TIMESTAMP
    IS
    BEGIN
        append_info (p_name);
        RETURN NULL;
    END nlts;

    FUNCTION nlraw (p_name VARCHAR2)
        RETURN RAW
    IS
    BEGIN
        append_info (p_name);
        RETURN NULL;
    END nlraw;
END set_as_uninvoked_parameter;
/