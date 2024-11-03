CREATE OR REPLACE 
package  TIFUND_OWN.ULP_PROCESOS_TP
--@!!Start
--@!! Generado por #APPVER#:GECO V1.0 winter 2024
--@!! Timestamp #TMSTMP#:20241020223221
--@!! Autor #AUTHOR#:Marcelo Herrera Tejada
--@!! Tabla #TSHORT#:PROC
--@!! No modifique este código
--@!!End
/*******************************************************************************
* Empresa:    Explora Information Technologies
* Proyecto:   Generador de APIs de tablas
*             GAT
* Nombre:     ULP_PROCESOS_TP
* Proposito:  Package de Tipos: Incluye un "subtipo" por cada columna, un "tipo 
* colección" por cada columna, un "tipo record", un tipo "colección de records" 
* y un tipo "ref cursor" para la tabla.
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
    K_PACKAGE CONSTANT FDC_DEFS.PACKAGE_NAME_T := 'ULP_PROCESOS_TP';
     
    subtype id_t is ULP_PROCESOS.id%type;
    subtype proc_id_t is ULP_PROCESOS.proc_id%type;
    subtype sist_id_sistema_t is ULP_PROCESOS.sist_id_sistema%type;
    subtype nombre_proceso_t is ULP_PROCESOS.nombre_proceso%type;
    subtype fecha_inicio_t is ULP_PROCESOS.fecha_inicio%type;
    subtype fecha_termino_t is ULP_PROCESOS.fecha_termino%type;
    subtype comentario_t is ULP_PROCESOS.comentario%type;
    subtype estado_t is ULP_PROCESOS.estado%type;
    subtype usuario_cliente_t is ULP_PROCESOS.usuario_cliente%type;
    subtype columna01_t is ULP_PROCESOS.columna01%type;
    subtype columna02_t is ULP_PROCESOS.columna02%type;
    subtype columna03_t is ULP_PROCESOS.columna03%type;
    subtype aud_creado_el_t is ULP_PROCESOS.aud_creado_el%type;
    subtype aud_creado_por_t is ULP_PROCESOS.aud_creado_por%type;
    subtype aud_modificado_el_t is ULP_PROCESOS.aud_modificado_el%type;
    subtype aud_modificado_por_t is ULP_PROCESOS.aud_modificado_por%type;
     
    type id_ct IS TABLE OF id_t INDEX BY BINARY_INTEGER;
    type proc_id_ct IS TABLE OF proc_id_t INDEX BY BINARY_INTEGER;
    type sist_id_sistema_ct IS TABLE OF sist_id_sistema_t INDEX BY BINARY_INTEGER;
    type nombre_proceso_ct IS TABLE OF nombre_proceso_t INDEX BY BINARY_INTEGER;
    type fecha_inicio_ct IS TABLE OF fecha_inicio_t INDEX BY BINARY_INTEGER;
    type fecha_termino_ct IS TABLE OF fecha_termino_t INDEX BY BINARY_INTEGER;
    type comentario_ct IS TABLE OF comentario_t INDEX BY BINARY_INTEGER;
    type estado_ct IS TABLE OF estado_t INDEX BY BINARY_INTEGER;
    type usuario_cliente_ct IS TABLE OF usuario_cliente_t INDEX BY BINARY_INTEGER;
    type columna01_ct IS TABLE OF columna01_t INDEX BY BINARY_INTEGER;
    type columna02_ct IS TABLE OF columna02_t INDEX BY BINARY_INTEGER;
    type columna03_ct IS TABLE OF columna03_t INDEX BY BINARY_INTEGER;
    type aud_creado_el_ct IS TABLE OF aud_creado_el_t INDEX BY BINARY_INTEGER;
    type aud_creado_por_ct IS TABLE OF aud_creado_por_t INDEX BY BINARY_INTEGER;
    type aud_modificado_el_ct IS TABLE OF aud_modificado_el_t INDEX BY BINARY_INTEGER;
    type aud_modificado_por_ct IS TABLE OF aud_modificado_por_t INDEX BY BINARY_INTEGER;
     
    subtype ULP_PROCESOS_rt is ULP_PROCESOS%rowtype;
    type    ULP_PROCESOS_ct is table of ULP_PROCESOS_rt index by binary_integer;
    type    ULP_PROCESOS_rc is ref cursor;
     
end ULP_PROCESOS_TP;
/
