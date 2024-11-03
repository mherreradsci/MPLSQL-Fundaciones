CREATE OR REPLACE 
package  TIFUND_OWN.ULP_PROCESOS_QP
--@!!Start
--@!! Generado por #APPVER#:GECO V1.0 winter 2024
--@!! Timestamp #TMSTMP#:20241020223222
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
 
    -- Constantes para identificar el package
    K_PACKAGE CONSTANT FDC_DEFS.PACKAGE_NAME_T := 'ULP_PROCESOS_QP';
    -- Consulta la exitencia de un registro
   -- en la tabla ULP_PROCESOS basado en la PK
    function existe( 
    p_id IN ULP_PROCESOS_TP.id_t 
    ) return BOOLEAN;
     
    -- Consulta un registro de tabla ULP_PROCESOS 
   -- basado en la constraint PROC_PK
    procedure sel_PROC_PK( 
        p_id IN ULP_PROCESOS_TP.id_t 
        ,p_ULP_PROCESOS OUT NOCOPY ULP_PROCESOS_TP.ULP_PROCESOS_rt
    ) ;
    -- Obtiene un cursor via una consulta sobre la constraint
   -- PROC_PK de la tabla ULP_PROCESOS
    function sel_PROC_PK( 
    p_id IN ULP_PROCESOS_TP.id_t 
    ) return ULP_PROCESOS_TP.ULP_PROCESOS_rc;
     
     
    -- Obtiene un cursor via una consulta sobre la constraint
   -- PROC_PROC_FK de la tabla ULP_PROCESOS
    function sel_PROC_PROC_FK( 
    p_proc_id IN ULP_PROCESOS_TP.proc_id_t DEFAULT NULL
    ) return ULP_PROCESOS_TP.ULP_PROCESOS_rc;
    -- Obtiene un cursor via una consulta sobre la constraint
   -- ULP_PROCESOS_GRL_SISTEMAS_ de la tabla ULP_PROCESOS
    function sel_ULP_PROCESOS_GRL_SISTEMAS_( 
    p_sist_id_sistema IN ULP_PROCESOS_TP.sist_id_sistema_t 
    ) return ULP_PROCESOS_TP.ULP_PROCESOS_rc;
     
    -- Obtiene un cursor para onsultar todos los registros
   -- de la tabla ULP_PROCESOS
    function sel
    return ULP_PROCESOS_TP.ULP_PROCESOS_rc;
     
end ULP_PROCESOS_QP;
/
