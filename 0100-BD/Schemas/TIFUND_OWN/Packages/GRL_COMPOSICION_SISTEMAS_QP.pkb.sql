CREATE OR REPLACE PACKAGE BODY "TIFUND_OWN"."GRL_COMPOSICION_SISTEMAS_QP"
--@!!Start
--@!! Generado por #APPVER#:GECO V1.0 winter 2024
--@!! Timestamp #TMSTMP#:20240822233230
--@!! Autor #AUTHOR#:Marcelo Herrera Tejada
--@!! Tabla #TSHORT#:COSI
--@!! No modifique este código
--@!!End
/*******************************************************************************
* Empresa:    Explora Information Technologies
* Proyecto:   Generador de APIs de tablas
*             GAT
* Nombre:     GRL_COMPOSICION_SISTEMAS_QP
* Proposito:  Package para Queries: Implementa las queries para la tabla
* Tabla:      GRL_COMPOSICION_SISTEMAS
* Descipción de la tabla:
* --** No disponible **--
*
* Cuando      Quien        Que
* ----------- ------------ -----------------------------------------------------
* 13-Aug-2024 MHERRERA     Creación
*******************************************************************************/
 is

    -- Consulta la exitencia de un registro
   -- en la tabla GRL_COMPOSICION_SISTEMAS basado en la PK
    function existe(
    p_sist_codigo IN GRL_COMPOSICION_SISTEMAS_TP.sist_codigo_t
    ,p_sist_codigo_subsistema IN GRL_COMPOSICION_SISTEMAS_TP.sist_codigo_subsistema_t
    ) return BOOLEAN is
        --* Constantes para identificar el programa
        k_programa CONSTANT FDC_DEFS.program_name_t := 'EXISTE';
        k_modulo CONSTANT FDC_DEFS.module_name_t := k_package || '.' || k_programa;
        -- Variables, constantes, tipos y subtipos locales
        cursor un_registro is select 'x' from GRL_COMPOSICION_SISTEMAS
        where
            sist_codigo = p_sist_codigo
            and   sist_codigo_subsistema = p_sist_codigo_subsistema;
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

    -- Consulta un registro de tabla GRL_COMPOSICION_SISTEMAS
   -- basado en la constraint COSI_PK
    procedure sel_COSI_PK(
        p_sist_codigo IN GRL_COMPOSICION_SISTEMAS_TP.sist_codigo_t
        ,p_sist_codigo_subsistema IN GRL_COMPOSICION_SISTEMAS_TP.sist_codigo_subsistema_t
        ,p_GRL_COMPOSICION_SISTEMAS OUT NOCOPY GRL_COMPOSICION_SISTEMAS_TP.GRL_COMPOSICION_SISTEMAS_rt
    )  is
        --* Constantes para identificar el programa
        k_programa CONSTANT FDC_DEFS.program_name_t := 'SEL_COSI_PK';
        k_modulo CONSTANT FDC_DEFS.module_name_t := k_package || '.' || k_programa;
        -- Variables, constantes, tipos y subtipos locales
        cursor c_GRL_COMPOSICION_SISTEMAS is select
            sist_codigo
            ,sist_codigo_subsistema
            ,NOMBRE_PROYECTO
            ,AUD_CREADO_EL
            ,AUD_CREADO_POR
            ,AUD_MODIFICADO_EL
            ,AUD_MODIFICADO_POR
            from GRL_COMPOSICION_SISTEMAS
            where
                sist_codigo = p_sist_codigo
                and   sist_codigo_subsistema = p_sist_codigo_subsistema;
            v_found BOOLEAN;
    begin

        open c_GRL_COMPOSICION_SISTEMAS;
        fetch c_GRL_COMPOSICION_SISTEMAS into p_GRL_COMPOSICION_SISTEMAS;
        v_found := c_GRL_COMPOSICION_SISTEMAS%FOUND;
        close c_GRL_COMPOSICION_SISTEMAS;
        if not v_found then raise no_data_found; end if;

    exception
        when no_data_found then
            raise no_data_found;
        when others then
            utl_error.informa (
                p_programa => k_modulo
            );
            raise;
    end sel_COSI_PK;
    -- Obtiene un cursor via una consulta sobre la constraint
   -- COSI_PK de la tabla GRL_COMPOSICION_SISTEMAS
    function sel_COSI_PK(
    p_sist_codigo IN GRL_COMPOSICION_SISTEMAS_TP.sist_codigo_t
    ,p_sist_codigo_subsistema IN GRL_COMPOSICION_SISTEMAS_TP.sist_codigo_subsistema_t
    ) return GRL_COMPOSICION_SISTEMAS_TP.GRL_COMPOSICION_SISTEMAS_rc is
            --* Constantes para identificar el programa
            k_programa CONSTANT FDC_DEFS.program_name_t := 'SEL_COSI_PK';
            k_modulo CONSTANT FDC_DEFS.module_name_t := k_package || '.' || k_programa;
            -- Variables, constantes, tipos y subtipos locales
        cu_GRL_COMPOSICION_SISTEMAS GRL_COMPOSICION_SISTEMAS_TP.GRL_COMPOSICION_SISTEMAS_rc;
    begin
        open cu_GRL_COMPOSICION_SISTEMAS for
        select
        sist_codigo
        ,sist_codigo_subsistema
        ,NOMBRE_PROYECTO
        ,AUD_CREADO_EL
        ,AUD_CREADO_POR
        ,AUD_MODIFICADO_EL
        ,AUD_MODIFICADO_POR
        from GRL_COMPOSICION_SISTEMAS
        where
            sist_codigo = p_sist_codigo
            and   sist_codigo_subsistema = p_sist_codigo_subsistema;

        return cu_GRL_COMPOSICION_SISTEMAS;
    exception
        when others then
            utl_error.informa (
                p_programa => k_modulo
            );
            raise;
    end sel_COSI_PK;


    -- Obtiene un cursor via una consulta sobre la constraint
   -- COSI_SIST_COMPUESTO_DE_FK de la tabla GRL_COMPOSICION_SISTEMAS
    function sel_COSI_SIST_COMPUESTO_DE_FK(
    p_sist_codigo_subsistema IN GRL_COMPOSICION_SISTEMAS_TP.sist_codigo_subsistema_t
    ) return GRL_COMPOSICION_SISTEMAS_TP.GRL_COMPOSICION_SISTEMAS_rc is
            --* Constantes para identificar el programa
            k_programa CONSTANT FDC_DEFS.program_name_t := 'SEL_COSI_SIST_COMPUESTO_DE_FK';
            k_modulo CONSTANT FDC_DEFS.module_name_t := k_package || '.' || k_programa;
            -- Variables, constantes, tipos y subtipos locales
        cu_GRL_COMPOSICION_SISTEMAS GRL_COMPOSICION_SISTEMAS_TP.GRL_COMPOSICION_SISTEMAS_rc;
    begin
        open cu_GRL_COMPOSICION_SISTEMAS for
        select
        sist_codigo
        ,sist_codigo_subsistema
        ,NOMBRE_PROYECTO
        ,AUD_CREADO_EL
        ,AUD_CREADO_POR
        ,AUD_MODIFICADO_EL
        ,AUD_MODIFICADO_POR
        from GRL_COMPOSICION_SISTEMAS
        where
            sist_codigo_subsistema = p_sist_codigo_subsistema;

        return cu_GRL_COMPOSICION_SISTEMAS;
    exception
        when others then
            utl_error.informa (
                p_programa => k_modulo
            );
            raise;
    end sel_COSI_SIST_COMPUESTO_DE_FK;
    -- Obtiene un cursor via una consulta sobre la constraint
   -- COSI_SIST_COMPUESTO_POR_FK de la tabla GRL_COMPOSICION_SISTEMAS
    function sel_COSI_SIST_COMPUESTO_POR_FK(
    p_sist_codigo IN GRL_COMPOSICION_SISTEMAS_TP.sist_codigo_t
    ) return GRL_COMPOSICION_SISTEMAS_TP.GRL_COMPOSICION_SISTEMAS_rc is
            --* Constantes para identificar el programa
            k_programa CONSTANT FDC_DEFS.program_name_t := 'SEL_COSI_SIST_COMPUESTO_POR_FK';
            k_modulo CONSTANT FDC_DEFS.module_name_t := k_package || '.' || k_programa;
            -- Variables, constantes, tipos y subtipos locales
        cu_GRL_COMPOSICION_SISTEMAS GRL_COMPOSICION_SISTEMAS_TP.GRL_COMPOSICION_SISTEMAS_rc;
    begin
        open cu_GRL_COMPOSICION_SISTEMAS for
        select
        sist_codigo
        ,sist_codigo_subsistema
        ,NOMBRE_PROYECTO
        ,AUD_CREADO_EL
        ,AUD_CREADO_POR
        ,AUD_MODIFICADO_EL
        ,AUD_MODIFICADO_POR
        from GRL_COMPOSICION_SISTEMAS
        where
            sist_codigo = p_sist_codigo;

        return cu_GRL_COMPOSICION_SISTEMAS;
    exception
        when others then
            utl_error.informa (
                p_programa => k_modulo
            );
            raise;
    end sel_COSI_SIST_COMPUESTO_POR_FK;

    -- Obtiene un cursor para onsultar todos los registros
   -- de la tabla GRL_COMPOSICION_SISTEMAS
    function sel
    return GRL_COMPOSICION_SISTEMAS_TP.GRL_COMPOSICION_SISTEMAS_rc is
        --* Constantes para identificar el programa
        k_programa CONSTANT FDC_DEFS.program_name_t := 'SEL';
        k_modulo CONSTANT FDC_DEFS.module_name_t := k_package || '.' || k_programa;
        -- Variables, constantes, tipos y subtipos locales
        c_GRL_COMPOSICION_SISTEMAS GRL_COMPOSICION_SISTEMAS_TP.GRL_COMPOSICION_SISTEMAS_rc;
    begin
        open c_GRL_COMPOSICION_SISTEMAS for
        select
        sist_codigo
        ,sist_codigo_subsistema
        ,NOMBRE_PROYECTO
        ,AUD_CREADO_EL
        ,AUD_CREADO_POR
        ,AUD_MODIFICADO_EL
        ,AUD_MODIFICADO_POR
        from GRL_COMPOSICION_SISTEMAS;

        return c_GRL_COMPOSICION_SISTEMAS;
    exception
        when others then
            utl_error.informa (
                p_programa => k_modulo
            );
            raise;
    end sel;


end GRL_COMPOSICION_SISTEMAS_QP;
/
