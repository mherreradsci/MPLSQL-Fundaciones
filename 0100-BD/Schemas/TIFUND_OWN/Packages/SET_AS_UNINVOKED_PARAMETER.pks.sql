CREATE OR REPLACE PACKAGE "TIFUND_OWN"."SET_AS_UNINVOKED_PARAMETER"
/*******************************************************************************
* Empresa:    Explora Information Technologies
* Proyecto:   Fundaciones
*
* Nombre:     SET_AS_UNINVOKED_PARAMETER
* Proposito:  Para implementar la declaración de parámetros por omisión en los
*             programas generados por GECO (GEnerador de COdigo PL/SQL) que
*             hacen update por columnas. Utiliza un flag de contexto para saber
*             si la columna tiene un valor nuevo.
*
* OBSERVACIÓN:En Oracle, si el valor que viene en la columna del update es
*             el mismo que el que ya tenía, no hace la modificación, solo
*             mantiene el valor antiguo.
*
* Cuando      Quien    Que
* ----------- -------- ---------------------------------------------------------
* 17-04-2012  mherrera Creación
* 22-08-2024  mherrera Cambia el nombre desde FDC_NULL a
*                      SET_AS_UNINVOKED_PARAMETER y mueve el package desde
*                      TIGECO_OWN a TIFUND_OWN
*
*******************************************************************************/
AS
    FUNCTION nldate (p_name VARCHAR2)
        RETURN DATE;

    FUNCTION nlvc2 (p_name VARCHAR2)
        RETURN VARCHAR2;

    FUNCTION nlnum (p_name VARCHAR2)
        RETURN NUMBER;

    FUNCTION nlclob (p_name VARCHAR2)
        RETURN CLOB;

    FUNCTION nlblob (p_name VARCHAR2)
        RETURN BLOB;

    FUNCTION nlts (p_name VARCHAR2)
        RETURN TIMESTAMP;

    FUNCTION nlraw (p_name VARCHAR2)
        RETURN RAW;
END SET_AS_UNINVOKED_PARAMETER;
/
