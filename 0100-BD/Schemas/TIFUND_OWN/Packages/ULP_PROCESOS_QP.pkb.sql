CREATE OR REPLACE PACKAGE BODY "TIFUND_OWN"."ULP_PROCESOS_QP"
--@!!Start
--@!! Generado por #APPVER#:GECO V1.0 winter 2024
--@!! Timestamp #TMSTMP#:20241020223224
--@!! Autor #AUTHOR#:Marcelo Herrera Tejada
--@!! Tabla #TSHORT#:PROC
--@!! No modifique este código
--@!!End
/*******************************************************************************
* Empresa:    Explora Information Technologies
* Proyecto:   Generador de APIs de tablas
*             GAT
* Nombre:     ULP_PROCESOS_QP
* Proposito:  Package para Queries: Implementa las queries para la tabla
* Tabla:      ULP_PROCESOS
* Descipción de la tabla:
* Tabla maestra para almacenar información de Procesos
*
* Cuando      Quien        Que
* ----------- ------------ -----------------------------------------------------
* 18-Oct-2024 MHERRERA     Creación
*******************************************************************************/
 is

    -- Consulta la exitencia de un registro
   -- en la tabla ULP_PROCESOS basado en la PK
    function existe(
    p_id IN ULP_PROCESOS_TP.id_t
    ) return BOOLEAN is
        --* Constantes para identificar el programa
        k_programa CONSTANT FDC_DEFS.program_name_t := 'EXISTE';
        k_modulo CONSTANT FDC_DEFS.module_name_t := k_package || '.' || k_programa;
        -- Variables, constantes, tipos y subtipos locales
        cursor un_registro is select 'x' from ULP_PROCESOS
        where
            ID = p_id;
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

    -- Consulta un registro de tabla ULP_PROCESOS
   -- basado en la constraint PROC_PK
    procedure sel_PROC_PK(
        p_id IN ULP_PROCESOS_TP.id_t
        ,p_ULP_PROCESOS OUT NOCOPY ULP_PROCESOS_TP.ULP_PROCESOS_rt
    )  is
        --* Constantes para identificar el programa
        k_programa CONSTANT FDC_DEFS.program_name_t := 'SEL_PROC_PK';
        k_modulo CONSTANT FDC_DEFS.module_name_t := k_package || '.' || k_programa;
        -- Variables, constantes, tipos y subtipos locales
        cursor c_ULP_PROCESOS is select
            ID
            ,PROC_ID
            ,SIST_ID_SISTEMA
            ,NOMBRE_PROCESO
            ,FECHA_INICIO
            ,FECHA_TERMINO
            ,COMENTARIO
            ,ESTADO
            ,USUARIO_CLIENTE
            ,COLUMNA01
            ,COLUMNA02
            ,COLUMNA03
            ,AUD_CREADO_EL
            ,AUD_CREADO_POR
            ,AUD_MODIFICADO_EL
            ,AUD_MODIFICADO_POR
            from ULP_PROCESOS
            where
                ID = p_id;
            v_found BOOLEAN;
    begin

        open c_ULP_PROCESOS;
        fetch c_ULP_PROCESOS into p_ULP_PROCESOS;
        v_found := c_ULP_PROCESOS%FOUND;
        close c_ULP_PROCESOS;
        if not v_found then raise no_data_found; end if;

    exception
        when no_data_found then
            raise no_data_found;
        when others then
            utl_error.informa (
                p_programa => k_modulo
            );
            raise;
    end sel_PROC_PK;
    -- Obtiene un cursor via una consulta sobre la constraint
   -- PROC_PK de la tabla ULP_PROCESOS
    function sel_PROC_PK(
    p_id IN ULP_PROCESOS_TP.id_t
    ) return ULP_PROCESOS_TP.ULP_PROCESOS_rc is
            --* Constantes para identificar el programa
            k_programa CONSTANT FDC_DEFS.program_name_t := 'SEL_PROC_PK';
            k_modulo CONSTANT FDC_DEFS.module_name_t := k_package || '.' || k_programa;
            -- Variables, constantes, tipos y subtipos locales
        cu_ULP_PROCESOS ULP_PROCESOS_TP.ULP_PROCESOS_rc;
    begin
        open cu_ULP_PROCESOS for
        select
        ID
        ,PROC_ID
        ,SIST_ID_SISTEMA
        ,NOMBRE_PROCESO
        ,FECHA_INICIO
        ,FECHA_TERMINO
        ,COMENTARIO
        ,ESTADO
        ,USUARIO_CLIENTE
        ,COLUMNA01
        ,COLUMNA02
        ,COLUMNA03
        ,AUD_CREADO_EL
        ,AUD_CREADO_POR
        ,AUD_MODIFICADO_EL
        ,AUD_MODIFICADO_POR
        from ULP_PROCESOS
        where
            ID = p_id;

        return cu_ULP_PROCESOS;
    exception
        when others then
            utl_error.informa (
                p_programa => k_modulo
            );
            raise;
    end sel_PROC_PK;


    -- Obtiene un cursor via una consulta sobre la constraint
   -- PROC_PROC_FK de la tabla ULP_PROCESOS
    function sel_PROC_PROC_FK(
    p_proc_id IN ULP_PROCESOS_TP.proc_id_t DEFAULT NULL
    ) return ULP_PROCESOS_TP.ULP_PROCESOS_rc is
            --* Constantes para identificar el programa
            k_programa CONSTANT FDC_DEFS.program_name_t := 'SEL_PROC_PROC_FK';
            k_modulo CONSTANT FDC_DEFS.module_name_t := k_package || '.' || k_programa;
            -- Variables, constantes, tipos y subtipos locales
        cu_ULP_PROCESOS ULP_PROCESOS_TP.ULP_PROCESOS_rc;
    begin
        open cu_ULP_PROCESOS for
        select
        ID
        ,PROC_ID
        ,SIST_ID_SISTEMA
        ,NOMBRE_PROCESO
        ,FECHA_INICIO
        ,FECHA_TERMINO
        ,COMENTARIO
        ,ESTADO
        ,USUARIO_CLIENTE
        ,COLUMNA01
        ,COLUMNA02
        ,COLUMNA03
        ,AUD_CREADO_EL
        ,AUD_CREADO_POR
        ,AUD_MODIFICADO_EL
        ,AUD_MODIFICADO_POR
        from ULP_PROCESOS
        where
            PROC_ID = p_proc_id;

        return cu_ULP_PROCESOS;
    exception
        when others then
            utl_error.informa (
                p_programa => k_modulo
            );
            raise;
    end sel_PROC_PROC_FK;
    -- Obtiene un cursor via una consulta sobre la constraint
   -- ULP_PROCESOS_GRL_SISTEMAS_ de la tabla ULP_PROCESOS
    function sel_ULP_PROCESOS_GRL_SISTEMAS_(
    p_sist_id_sistema IN ULP_PROCESOS_TP.sist_id_sistema_t
    ) return ULP_PROCESOS_TP.ULP_PROCESOS_rc is
            --* Constantes para identificar el programa
            k_programa CONSTANT FDC_DEFS.program_name_t := 'SEL_ULP_PROCESOS_GRL_SISTEMAS_';
            k_modulo CONSTANT FDC_DEFS.module_name_t := k_package || '.' || k_programa;
            -- Variables, constantes, tipos y subtipos locales
        cu_ULP_PROCESOS ULP_PROCESOS_TP.ULP_PROCESOS_rc;
    begin
        open cu_ULP_PROCESOS for
        select
        ID
        ,PROC_ID
        ,SIST_ID_SISTEMA
        ,NOMBRE_PROCESO
        ,FECHA_INICIO
        ,FECHA_TERMINO
        ,COMENTARIO
        ,ESTADO
        ,USUARIO_CLIENTE
        ,COLUMNA01
        ,COLUMNA02
        ,COLUMNA03
        ,AUD_CREADO_EL
        ,AUD_CREADO_POR
        ,AUD_MODIFICADO_EL
        ,AUD_MODIFICADO_POR
        from ULP_PROCESOS
        where
            SIST_ID_SISTEMA = p_sist_id_sistema;

        return cu_ULP_PROCESOS;
    exception
        when others then
            utl_error.informa (
                p_programa => k_modulo
            );
            raise;
    end sel_ULP_PROCESOS_GRL_SISTEMAS_;

    -- Obtiene un cursor para onsultar todos los registros
   -- de la tabla ULP_PROCESOS
    function sel
    return ULP_PROCESOS_TP.ULP_PROCESOS_rc is
        --* Constantes para identificar el programa
        k_programa CONSTANT FDC_DEFS.program_name_t := 'SEL';
        k_modulo CONSTANT FDC_DEFS.module_name_t := k_package || '.' || k_programa;
        -- Variables, constantes, tipos y subtipos locales
        c_ULP_PROCESOS ULP_PROCESOS_TP.ULP_PROCESOS_rc;
    begin
        open c_ULP_PROCESOS for
        select
        ID
        ,PROC_ID
        ,SIST_ID_SISTEMA
        ,NOMBRE_PROCESO
        ,FECHA_INICIO
        ,FECHA_TERMINO
        ,COMENTARIO
        ,ESTADO
        ,USUARIO_CLIENTE
        ,COLUMNA01
        ,COLUMNA02
        ,COLUMNA03
        ,AUD_CREADO_EL
        ,AUD_CREADO_POR
        ,AUD_MODIFICADO_EL
        ,AUD_MODIFICADO_POR
        from ULP_PROCESOS;

        return c_ULP_PROCESOS;
    exception
        when others then
            utl_error.informa (
                p_programa => k_modulo
            );
            raise;
    end sel;


end ULP_PROCESOS_QP;
/
