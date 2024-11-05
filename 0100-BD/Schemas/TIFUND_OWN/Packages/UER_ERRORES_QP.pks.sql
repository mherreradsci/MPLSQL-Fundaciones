CREATE OR REPLACE PACKAGE "TIFUND_OWN"."UER_ERRORES_QP"
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

    -- Constantes para identificar el package
    K_PACKAGE CONSTANT FDC_DEFS.PACKAGE_NAME_T := 'UER_ERRORES_QP';
    -- Consulta la exitencia de un registro
   -- en la tabla UER_ERRORES basado en la PK
    function existe(
    p_erro_id IN UER_ERRORES_TP.erro_id_t
    ) return BOOLEAN;

    -- Consulta un registro de tabla UER_ERRORES
   -- basado en la constraint ERRO_PK
    procedure sel_ERRO_PK(
        p_erro_id IN UER_ERRORES_TP.erro_id_t
        ,p_UER_ERRORES OUT NOCOPY UER_ERRORES_TP.UER_ERRORES_rt
    ) ;
    -- Obtiene un cursor via una consulta sobre la constraint
   -- ERRO_PK de la tabla UER_ERRORES
    function sel_ERRO_PK(
    p_erro_id IN UER_ERRORES_TP.erro_id_t
    ) return UER_ERRORES_TP.UER_ERRORES_rc;



    -- Obtiene un cursor para onsultar todos los registros
   -- de la tabla UER_ERRORES
    function sel
    return UER_ERRORES_TP.UER_ERRORES_rc;

end UER_ERRORES_QP;
/
