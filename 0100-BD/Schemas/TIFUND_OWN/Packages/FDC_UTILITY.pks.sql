create or replace package "TIFUND_OWN"."FDC_UTILITY"
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
    --* Constantes para identificar el package
    k_package   constant fdc_defs.package_name_t := 'FDC_UTILITY';

    function get_oracle_error_message (p_user_message in varchar2 default null)
        return varchar2;
end fdc_utility;
/
