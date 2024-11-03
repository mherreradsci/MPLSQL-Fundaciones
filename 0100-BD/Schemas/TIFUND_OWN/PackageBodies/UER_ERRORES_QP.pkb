CREATE OR REPLACE 
package BODY TIFUND_OWN.UER_ERRORES_QP
--@!!Start
--@!! Generado por #APPVER#:GECO V1.0 winter 2024
--@!! Timestamp #TMSTMP#:20240822233232
--@!! Autor #AUTHOR#:Marcelo Herrera Tejada
--@!! Tabla #TSHORT#:ERRO
--@!! No modifique este código
--@!!End
/*******************************************************************************
* Empresa:    Explora Information Technologies
* Proyecto:   Generador de APIs de tablas
*             GAT
* Nombre:     UER_ERRORES_QP
* Proposito:  Package para Queries: Implementa las queries para la tabla
* Tabla:      UER_ERRORES
* Descipción de la tabla:
* Registra los errores, generalmente, capturados por el bloque "exception 
* others". Se utiliza transversalmente cuando se adhiere al framework de 
* "Desarrollo de Aplicaciones Empresariales PL/SQL"
*
* Cuando      Quien        Que
* ----------- ------------ -----------------------------------------------------
* 22-Aug-2024 MHERRERA     Creación
*******************************************************************************/
 is 
 
    -- Consulta la exitencia de un registro
   -- en la tabla UER_ERRORES basado en la PK
    function existe( 
    p_erro_id IN UER_ERRORES_TP.erro_id_t 
    ) return BOOLEAN is
        --* Constantes para identificar el programa
        k_programa CONSTANT FDC_DEFS.program_name_t := 'EXISTE';
        k_modulo CONSTANT FDC_DEFS.module_name_t := k_package || '.' || k_programa;
        -- Variables, constantes, tipos y subtipos locales
        cursor un_registro is select 'x' from UER_ERRORES
        where  
            ERRO_ID = p_erro_id;
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
     
    -- Consulta un registro de tabla UER_ERRORES 
   -- basado en la constraint ERRO_PK
    procedure sel_ERRO_PK( 
        p_erro_id IN UER_ERRORES_TP.erro_id_t 
        ,p_UER_ERRORES OUT NOCOPY UER_ERRORES_TP.UER_ERRORES_rt
    )  is
        --* Constantes para identificar el programa
        k_programa CONSTANT FDC_DEFS.program_name_t := 'SEL_ERRO_PK';
        k_modulo CONSTANT FDC_DEFS.module_name_t := k_package || '.' || k_programa;
        -- Variables, constantes, tipos y subtipos locales
        cursor c_UER_ERRORES is select
            ERRO_ID
            ,PROGRAMA
            ,MENSAJE
            ,AUD_CREADO_POR
            ,AUD_CREADO_EN
            ,AUD_MODIFICADO_POR
            ,AUD_MODIFICADO_EN
            ,LOPR_ID
            from UER_ERRORES
            where  
                ERRO_ID = p_erro_id;
            v_found BOOLEAN;
    begin
     
        open c_UER_ERRORES;
        fetch c_UER_ERRORES into p_UER_ERRORES;
        v_found := c_UER_ERRORES%FOUND;
        close c_UER_ERRORES;
        if not v_found then raise no_data_found; end if;
         
    exception
        when no_data_found then
            raise no_data_found;
        when others then
            utl_error.informa (
                p_programa => k_modulo
            );
            raise;
    end sel_ERRO_PK;
    -- Obtiene un cursor via una consulta sobre la constraint
   -- ERRO_PK de la tabla UER_ERRORES
    function sel_ERRO_PK( 
    p_erro_id IN UER_ERRORES_TP.erro_id_t 
    ) return UER_ERRORES_TP.UER_ERRORES_rc is
            --* Constantes para identificar el programa
            k_programa CONSTANT FDC_DEFS.program_name_t := 'SEL_ERRO_PK';
            k_modulo CONSTANT FDC_DEFS.module_name_t := k_package || '.' || k_programa;
            -- Variables, constantes, tipos y subtipos locales
        cu_UER_ERRORES UER_ERRORES_TP.UER_ERRORES_rc;
    begin
        open cu_UER_ERRORES for
        select
        ERRO_ID
        ,PROGRAMA
        ,MENSAJE
        ,AUD_CREADO_POR
        ,AUD_CREADO_EN
        ,AUD_MODIFICADO_POR
        ,AUD_MODIFICADO_EN
        ,LOPR_ID
        from UER_ERRORES
        where  
            ERRO_ID = p_erro_id;
         
        return cu_UER_ERRORES;
    exception
        when others then
            utl_error.informa (
                p_programa => k_modulo
            );
            raise;
    end sel_ERRO_PK;
     
     
     
    -- Obtiene un cursor para onsultar todos los registros
   -- de la tabla UER_ERRORES
    function sel
    return UER_ERRORES_TP.UER_ERRORES_rc is
        --* Constantes para identificar el programa
        k_programa CONSTANT FDC_DEFS.program_name_t := 'SEL';
        k_modulo CONSTANT FDC_DEFS.module_name_t := k_package || '.' || k_programa;
        -- Variables, constantes, tipos y subtipos locales
        c_UER_ERRORES UER_ERRORES_TP.UER_ERRORES_rc;
    begin
        open c_UER_ERRORES for
        select
        ERRO_ID
        ,PROGRAMA
        ,MENSAJE
        ,AUD_CREADO_POR
        ,AUD_CREADO_EN
        ,AUD_MODIFICADO_POR
        ,AUD_MODIFICADO_EN
        ,LOPR_ID
        from UER_ERRORES;
         
        return c_UER_ERRORES;
    exception
        when others then
            utl_error.informa (
                p_programa => k_modulo
            );
            raise;
    end sel;
     
 
end UER_ERRORES_QP;
/
