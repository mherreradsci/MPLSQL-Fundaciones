create or replace package body "TIFUND_OWN"."FDC_UTILITY"
/*******************************************************************************
* Empresa:    Explora Information Technologies
* Proyecto:   Fundaciones PL/SQL
*
* Nombre:     FDC_UTILITY
* Propósito:  Package con utilitarios transversales
*
* Cuándo      Quién        Qué
* ----------- ------------ -----------------------------------------------------
* 22-Nov-2024 MHERRERA     Creación
*******************************************************************************/
is
    function get_oracle_error_message (p_user_message in varchar2 default null)
        return varchar2
    is
        --* Constantes para identificar el programa
        k_program_name   constant fdc_defs.program_name_t
                                      := 'GET_ORACLE_ERROR_MESSAGE' ;
        k_module_name    constant fdc_defs.module_name_t
                                      := k_package || '.' || k_program_name ;
    begin
        return (   p_user_message
                || ':'
                || 'FES:'
                || dbms_utility.format_error_stack
                || 'FEBT:'
                || dbms_utility.format_error_backtrace);
    exception
        when others then
            utl_error.informa (p_programa   => k_module_name,
                               p_mensaje    => get_oracle_error_message);
            raise;
    end get_oracle_error_message;
end fdc_utility;
/