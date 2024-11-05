CREATE OR REPLACE PACKAGE BODY "TIFUND_OWN"."ULP_DET_PROCESOS_QP"
--@!!Start
--@!! Generado por #APPVER#:GECO V1.0 winter 2024
--@!! Timestamp #TMSTMP#:20240822233231
--@!! Autor #AUTHOR#:Marcelo Herrera Tejada
--@!! Tabla #TSHORT#:DEPR
--@!! No modifique este código
--@!!End
/*******************************************************************************
* Empresa:    Explora Information Technologies
* Proyecto:   Generador de APIs de tablas
*             GAT
* Nombre:     ULP_DET_PROCESOS_QP
* Proposito:  Package para Queries: Implementa las queries para la tabla
* Tabla:      ULP_DET_PROCESOS
* Descipción de la tabla:
* Bitacora para detalle  de procesos
*
* Cuando      Quien        Que
* ----------- ------------ -----------------------------------------------------
* 13-Aug-2024 MHERRERA     Creación
*******************************************************************************/
 is

    -- Consulta la exitencia de un registro
   -- en la tabla ULP_DET_PROCESOS basado en la PK
    function existe(
    p_proc_id IN ULP_DET_PROCESOS_TP.proc_id_t
    ,p_secuencia IN ULP_DET_PROCESOS_TP.secuencia_t
    ) return BOOLEAN is
        --* Constantes para identificar el programa
        k_programa CONSTANT FDC_DEFS.program_name_t := 'EXISTE';
        k_modulo CONSTANT FDC_DEFS.module_name_t := k_package || '.' || k_programa;
        -- Variables, constantes, tipos y subtipos locales
        cursor un_registro is select 'x' from ULP_DET_PROCESOS
        where
            PROC_ID = p_proc_id
            and   SECUENCIA = p_secuencia;
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

    -- Consulta un registro de tabla ULP_DET_PROCESOS
   -- basado en la constraint DEPR_PK
    procedure sel_DEPR_PK(
        p_proc_id IN ULP_DET_PROCESOS_TP.proc_id_t
        ,p_secuencia IN ULP_DET_PROCESOS_TP.secuencia_t
        ,p_ULP_DET_PROCESOS OUT NOCOPY ULP_DET_PROCESOS_TP.ULP_DET_PROCESOS_rt
    )  is
        --* Constantes para identificar el programa
        k_programa CONSTANT FDC_DEFS.program_name_t := 'SEL_DEPR_PK';
        k_modulo CONSTANT FDC_DEFS.module_name_t := k_package || '.' || k_programa;
        -- Variables, constantes, tipos y subtipos locales
        cursor c_ULP_DET_PROCESOS is select
            PROC_ID
            ,SECUENCIA
            ,NOMBRE_MODULO
            ,TIPO_MENSAJE
            ,MENSAJE
            ,USUARIO_CLIENTE
            ,COLUMNA01
            ,COLUMNA02
            ,COLUMNA03
            ,AUD_CREADO_EL
            ,AUD_CREADO_POR
            ,AUD_MODIFICADO_EL
            ,AUD_MODIFICADO_POR
            from ULP_DET_PROCESOS
            where
                PROC_ID = p_proc_id
                and   SECUENCIA = p_secuencia;
            v_found BOOLEAN;
    begin

        open c_ULP_DET_PROCESOS;
        fetch c_ULP_DET_PROCESOS into p_ULP_DET_PROCESOS;
        v_found := c_ULP_DET_PROCESOS%FOUND;
        close c_ULP_DET_PROCESOS;
        if not v_found then raise no_data_found; end if;

    exception
        when no_data_found then
            raise no_data_found;
        when others then
            utl_error.informa (
                p_programa => k_modulo
            );
            raise;
    end sel_DEPR_PK;
    -- Obtiene un cursor via una consulta sobre la constraint
   -- DEPR_PK de la tabla ULP_DET_PROCESOS
    function sel_DEPR_PK(
    p_proc_id IN ULP_DET_PROCESOS_TP.proc_id_t
    ,p_secuencia IN ULP_DET_PROCESOS_TP.secuencia_t
    ) return ULP_DET_PROCESOS_TP.ULP_DET_PROCESOS_rc is
            --* Constantes para identificar el programa
            k_programa CONSTANT FDC_DEFS.program_name_t := 'SEL_DEPR_PK';
            k_modulo CONSTANT FDC_DEFS.module_name_t := k_package || '.' || k_programa;
            -- Variables, constantes, tipos y subtipos locales
        cu_ULP_DET_PROCESOS ULP_DET_PROCESOS_TP.ULP_DET_PROCESOS_rc;
    begin
        open cu_ULP_DET_PROCESOS for
        select
        PROC_ID
        ,SECUENCIA
        ,NOMBRE_MODULO
        ,TIPO_MENSAJE
        ,MENSAJE
        ,USUARIO_CLIENTE
        ,COLUMNA01
        ,COLUMNA02
        ,COLUMNA03
        ,AUD_CREADO_EL
        ,AUD_CREADO_POR
        ,AUD_MODIFICADO_EL
        ,AUD_MODIFICADO_POR
        from ULP_DET_PROCESOS
        where
            PROC_ID = p_proc_id
            and   SECUENCIA = p_secuencia;

        return cu_ULP_DET_PROCESOS;
    exception
        when others then
            utl_error.informa (
                p_programa => k_modulo
            );
            raise;
    end sel_DEPR_PK;


    -- Obtiene un cursor via una consulta sobre la constraint
   -- DEPR_PROC_FK de la tabla ULP_DET_PROCESOS
    function sel_DEPR_PROC_FK(
    p_proc_id IN ULP_DET_PROCESOS_TP.proc_id_t
    ) return ULP_DET_PROCESOS_TP.ULP_DET_PROCESOS_rc is
            --* Constantes para identificar el programa
            k_programa CONSTANT FDC_DEFS.program_name_t := 'SEL_DEPR_PROC_FK';
            k_modulo CONSTANT FDC_DEFS.module_name_t := k_package || '.' || k_programa;
            -- Variables, constantes, tipos y subtipos locales
        cu_ULP_DET_PROCESOS ULP_DET_PROCESOS_TP.ULP_DET_PROCESOS_rc;
    begin
        open cu_ULP_DET_PROCESOS for
        select
        PROC_ID
        ,SECUENCIA
        ,NOMBRE_MODULO
        ,TIPO_MENSAJE
        ,MENSAJE
        ,USUARIO_CLIENTE
        ,COLUMNA01
        ,COLUMNA02
        ,COLUMNA03
        ,AUD_CREADO_EL
        ,AUD_CREADO_POR
        ,AUD_MODIFICADO_EL
        ,AUD_MODIFICADO_POR
        from ULP_DET_PROCESOS
        where
            PROC_ID = p_proc_id;

        return cu_ULP_DET_PROCESOS;
    exception
        when others then
            utl_error.informa (
                p_programa => k_modulo
            );
            raise;
    end sel_DEPR_PROC_FK;

    -- Obtiene un cursor para onsultar todos los registros
   -- de la tabla ULP_DET_PROCESOS
    function sel
    return ULP_DET_PROCESOS_TP.ULP_DET_PROCESOS_rc is
        --* Constantes para identificar el programa
        k_programa CONSTANT FDC_DEFS.program_name_t := 'SEL';
        k_modulo CONSTANT FDC_DEFS.module_name_t := k_package || '.' || k_programa;
        -- Variables, constantes, tipos y subtipos locales
        c_ULP_DET_PROCESOS ULP_DET_PROCESOS_TP.ULP_DET_PROCESOS_rc;
    begin
        open c_ULP_DET_PROCESOS for
        select
        PROC_ID
        ,SECUENCIA
        ,NOMBRE_MODULO
        ,TIPO_MENSAJE
        ,MENSAJE
        ,USUARIO_CLIENTE
        ,COLUMNA01
        ,COLUMNA02
        ,COLUMNA03
        ,AUD_CREADO_EL
        ,AUD_CREADO_POR
        ,AUD_MODIFICADO_EL
        ,AUD_MODIFICADO_POR
        from ULP_DET_PROCESOS;

        return c_ULP_DET_PROCESOS;
    exception
        when others then
            utl_error.informa (
                p_programa => k_modulo
            );
            raise;
    end sel;


end ULP_DET_PROCESOS_QP;
/
