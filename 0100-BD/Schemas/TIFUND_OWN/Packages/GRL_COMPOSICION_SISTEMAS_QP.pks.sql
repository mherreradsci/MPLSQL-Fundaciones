CREATE OR REPLACE PACKAGE "TIFUND_OWN"."GRL_COMPOSICION_SISTEMAS_QP"
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

    -- Constantes para identificar el package
    K_PACKAGE CONSTANT FDC_DEFS.PACKAGE_NAME_T := 'GRL_COMPOSICION_SISTEMAS_QP';
    -- Consulta la exitencia de un registro
   -- en la tabla GRL_COMPOSICION_SISTEMAS basado en la PK
    function existe(
    p_sist_codigo IN GRL_COMPOSICION_SISTEMAS_TP.sist_codigo_t
    ,p_sist_codigo_subsistema IN GRL_COMPOSICION_SISTEMAS_TP.sist_codigo_subsistema_t
    ) return BOOLEAN;

    -- Consulta un registro de tabla GRL_COMPOSICION_SISTEMAS
   -- basado en la constraint COSI_PK
    procedure sel_COSI_PK(
        p_sist_codigo IN GRL_COMPOSICION_SISTEMAS_TP.sist_codigo_t
        ,p_sist_codigo_subsistema IN GRL_COMPOSICION_SISTEMAS_TP.sist_codigo_subsistema_t
        ,p_GRL_COMPOSICION_SISTEMAS OUT NOCOPY GRL_COMPOSICION_SISTEMAS_TP.GRL_COMPOSICION_SISTEMAS_rt
    ) ;
    -- Obtiene un cursor via una consulta sobre la constraint
   -- COSI_PK de la tabla GRL_COMPOSICION_SISTEMAS
    function sel_COSI_PK(
    p_sist_codigo IN GRL_COMPOSICION_SISTEMAS_TP.sist_codigo_t
    ,p_sist_codigo_subsistema IN GRL_COMPOSICION_SISTEMAS_TP.sist_codigo_subsistema_t
    ) return GRL_COMPOSICION_SISTEMAS_TP.GRL_COMPOSICION_SISTEMAS_rc;


    -- Obtiene un cursor via una consulta sobre la constraint
   -- COSI_SIST_COMPUESTO_DE_FK de la tabla GRL_COMPOSICION_SISTEMAS
    function sel_COSI_SIST_COMPUESTO_DE_FK(
    p_sist_codigo_subsistema IN GRL_COMPOSICION_SISTEMAS_TP.sist_codigo_subsistema_t
    ) return GRL_COMPOSICION_SISTEMAS_TP.GRL_COMPOSICION_SISTEMAS_rc;
    -- Obtiene un cursor via una consulta sobre la constraint
   -- COSI_SIST_COMPUESTO_POR_FK de la tabla GRL_COMPOSICION_SISTEMAS
    function sel_COSI_SIST_COMPUESTO_POR_FK(
    p_sist_codigo IN GRL_COMPOSICION_SISTEMAS_TP.sist_codigo_t
    ) return GRL_COMPOSICION_SISTEMAS_TP.GRL_COMPOSICION_SISTEMAS_rc;

    -- Obtiene un cursor para onsultar todos los registros
   -- de la tabla GRL_COMPOSICION_SISTEMAS
    function sel
    return GRL_COMPOSICION_SISTEMAS_TP.GRL_COMPOSICION_SISTEMAS_rc;

end GRL_COMPOSICION_SISTEMAS_QP;
/
