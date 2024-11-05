CREATE OR REPLACE PACKAGE BODY "TIFUND_OWN"."GRL_SISTEMAS_QP"
--@!!Start
--@!! Generado por #APPVER#:GECO V1.0 winter 2024
--@!! Timestamp #TMSTMP#:20240822233230
--@!! Autor #AUTHOR#:Marcelo Herrera Tejada
--@!! Tabla #TSHORT#:SIST
--@!! No modifique este código
--@!!End
/*******************************************************************************
* Empresa:    Explora Information Technologies
* Proyecto:   Generador de APIs de tablas
*             GAT
* Nombre:     GRL_SISTEMAS_QP
* Proposito:  Package para Queries: Implementa las queries para la tabla
* Tabla:      GRL_SISTEMAS
* Descipción de la tabla:
* --** No disponible **--
*
* Cuando      Quien        Que
* ----------- ------------ -----------------------------------------------------
* 12-Aug-2024 MHERRERA     Creación
*******************************************************************************/
 is

    -- Consulta la exitencia de un registro
   -- en la tabla GRL_SISTEMAS basado en la PK
    function existe(
    p_id_sistema IN GRL_SISTEMAS_TP.id_sistema_t
    ) return BOOLEAN is
        --* Constantes para identificar el programa
        k_programa CONSTANT FDC_DEFS.program_name_t := 'EXISTE';
        k_modulo CONSTANT FDC_DEFS.module_name_t := k_package || '.' || k_programa;
        -- Variables, constantes, tipos y subtipos locales
        cursor un_registro is select 'x' from GRL_SISTEMAS
        where
            ID_SISTEMA = p_id_sistema;
        v_valor VARCHAR2(1);
        v_retval BOOLEAN;
    begin
        open un_registro;
        FETCH un_registro INTO v_valor;
        v_retval := un_registro%FOUND;
        CLOSE un_registro;
        RETURN v_retval;
    exception
        when others then
            utl_error.informa (
                p_programa => k_modulo
            );
            raise;
    end existe;

    -- Consulta un registro de tabla GRL_SISTEMAS
   -- basado en la constraint SIST_PK
    procedure sel_SIST_PK(
        p_id_sistema IN GRL_SISTEMAS_TP.id_sistema_t
        ,p_GRL_SISTEMAS OUT NOCOPY GRL_SISTEMAS_TP.GRL_SISTEMAS_rt
    )  is
        --* Constantes para identificar el programa
        k_programa CONSTANT FDC_DEFS.program_name_t := 'SEL_SIST_PK';
        k_modulo CONSTANT FDC_DEFS.module_name_t := k_package || '.' || k_programa;
        -- Variables, constantes, tipos y subtipos locales
        cursor c_GRL_SISTEMAS is select
            ID_SISTEMA
            ,NOMBRE
            ,DESCRIPCION
            ,NIVEL_SISTEMA
            ,AUD_CREADO_EL
            ,AUD_CREADO_POR
            ,AUD_MODIFICADO_EL
            ,AUD_MODIFICADO_POR
            from GRL_SISTEMAS
            where
                ID_SISTEMA = p_id_sistema;
            v_found BOOLEAN;
    begin

        open c_GRL_SISTEMAS;
        fetch c_GRL_SISTEMAS into p_GRL_SISTEMAS;
        v_found := c_GRL_SISTEMAS%FOUND;
        close c_GRL_SISTEMAS;
        if not v_found then raise no_data_found; end if;

    exception
        when no_data_found then
            raise no_data_found;
        when others then
            utl_error.informa (
                p_programa => k_modulo
            );
            raise;
    end sel_SIST_PK;
    -- Obtiene un cursor via una consulta sobre la constraint
   -- SIST_PK de la tabla GRL_SISTEMAS
    function sel_SIST_PK(
    p_id_sistema IN GRL_SISTEMAS_TP.id_sistema_t
    ) return GRL_SISTEMAS_TP.GRL_SISTEMAS_rc is
            --* Constantes para identificar el programa
            k_programa CONSTANT FDC_DEFS.program_name_t := 'SEL_SIST_PK';
            k_modulo CONSTANT FDC_DEFS.module_name_t := k_package || '.' || k_programa;
            -- Variables, constantes, tipos y subtipos locales
        cu_GRL_SISTEMAS GRL_SISTEMAS_TP.GRL_SISTEMAS_rc;
    begin
        open cu_GRL_SISTEMAS for
        select
        ID_SISTEMA
        ,NOMBRE
        ,DESCRIPCION
        ,NIVEL_SISTEMA
        ,AUD_CREADO_EL
        ,AUD_CREADO_POR
        ,AUD_MODIFICADO_EL
        ,AUD_MODIFICADO_POR
        from GRL_SISTEMAS
        where
            ID_SISTEMA = p_id_sistema;

        return cu_GRL_SISTEMAS;
    exception
        when others then
            utl_error.informa (
                p_programa => k_modulo
            );
            raise;
    end sel_SIST_PK;



    -- Obtiene un cursor para onsultar todos los registros
   -- de la tabla GRL_SISTEMAS
    function sel
    return GRL_SISTEMAS_TP.GRL_SISTEMAS_rc is
        --* Constantes para identificar el programa
        k_programa CONSTANT FDC_DEFS.program_name_t := 'SEL';
        k_modulo CONSTANT FDC_DEFS.module_name_t := k_package || '.' || k_programa;
        -- Variables, constantes, tipos y subtipos locales
        c_GRL_SISTEMAS GRL_SISTEMAS_TP.GRL_SISTEMAS_rc;
    begin
        open c_GRL_SISTEMAS for
        select
        ID_SISTEMA
        ,NOMBRE
        ,DESCRIPCION
        ,NIVEL_SISTEMA
        ,AUD_CREADO_EL
        ,AUD_CREADO_POR
        ,AUD_MODIFICADO_EL
        ,AUD_MODIFICADO_POR
        from GRL_SISTEMAS;

        return c_GRL_SISTEMAS;
    exception
        when others then
            utl_error.informa (
                p_programa => k_modulo
            );
            raise;
    end sel;


end GRL_SISTEMAS_QP;
/
