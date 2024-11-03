CREATE OR REPLACE FUNCTION tifund_own.check_exists (
    p_table_name   IN VARCHAR2,
    p_condition    IN VARCHAR2 DEFAULT '1=1')
    RETURN BOOLEAN
    AUTHID CURRENT_USER
AS
    --TODO: crear Header y explicar para que sirve y como se utiliza esta funcion
    --TODO: Enpacketar en un package de funciones utilitarios/generales
    -- Constantes para identificar el package/programa que se está ejecutando
    k_programa   CONSTANT fdc_defs.program_name_t := 'CHECK_EXISTS';
    k_modulo     CONSTANT fdc_defs.module_name_t := k_programa;
    --*

    v_dummy               VARCHAR2 (1);
    v_sql_command         VARCHAR2 (200)
        := q'[BEGIN EXECUTE IMMEDIATE 'SELECT CHR(120) FROM ' || :P_BIND_TABLE_NAME || ' WHERE ROWNUM=1 AND ' || :P_BIND_CONDITION INTO :V_VAL; END;]';
BEGIN
    DBMS_OUTPUT.put_line ('v_sql_command:' || v_sql_command);

    EXECUTE IMMEDIATE v_sql_command
        USING p_table_name, p_condition, OUT v_dummy;

    RETURN TRUE;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RETURN FALSE;
    WHEN OTHERS THEN
        utl_error.informa (
            p_programa   => k_modulo,
            p_mensaje    =>    'v_sql_command:'
                            || v_sql_command
                            || CHR (10)
                            || 'p_table_name:'
                            || p_table_name
                            || CHR (10)
                            || 'p_condition:'
                            || p_condition
                            || CHR (10)
                            || DBMS_UTILITY.format_error_backtrace
                            || DBMS_UTILITY.format_error_stack);
        RAISE;
END;
/