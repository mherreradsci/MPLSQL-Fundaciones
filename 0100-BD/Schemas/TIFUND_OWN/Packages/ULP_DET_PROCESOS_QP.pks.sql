CREATE OR REPLACE PACKAGE "TIFUND_OWN"."ULP_DET_PROCESOS_QP"
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

    -- Constantes para identificar el package
    K_PACKAGE CONSTANT FDC_DEFS.PACKAGE_NAME_T := 'ULP_DET_PROCESOS_QP';
    -- Consulta la exitencia de un registro
   -- en la tabla ULP_DET_PROCESOS basado en la PK
    function existe(
    p_proc_id IN ULP_DET_PROCESOS_TP.proc_id_t
    ,p_secuencia IN ULP_DET_PROCESOS_TP.secuencia_t
    ) return BOOLEAN;

    -- Consulta un registro de tabla ULP_DET_PROCESOS
   -- basado en la constraint DEPR_PK
    procedure sel_DEPR_PK(
        p_proc_id IN ULP_DET_PROCESOS_TP.proc_id_t
        ,p_secuencia IN ULP_DET_PROCESOS_TP.secuencia_t
        ,p_ULP_DET_PROCESOS OUT NOCOPY ULP_DET_PROCESOS_TP.ULP_DET_PROCESOS_rt
    ) ;
    -- Obtiene un cursor via una consulta sobre la constraint
   -- DEPR_PK de la tabla ULP_DET_PROCESOS
    function sel_DEPR_PK(
    p_proc_id IN ULP_DET_PROCESOS_TP.proc_id_t
    ,p_secuencia IN ULP_DET_PROCESOS_TP.secuencia_t
    ) return ULP_DET_PROCESOS_TP.ULP_DET_PROCESOS_rc;


    -- Obtiene un cursor via una consulta sobre la constraint
   -- DEPR_PROC_FK de la tabla ULP_DET_PROCESOS
    function sel_DEPR_PROC_FK(
    p_proc_id IN ULP_DET_PROCESOS_TP.proc_id_t
    ) return ULP_DET_PROCESOS_TP.ULP_DET_PROCESOS_rc;

    -- Obtiene un cursor para onsultar todos los registros
   -- de la tabla ULP_DET_PROCESOS
    function sel
    return ULP_DET_PROCESOS_TP.ULP_DET_PROCESOS_rc;

end ULP_DET_PROCESOS_QP;
/
