CREATE OR REPLACE PACKAGE "TIFUND_OWN"."ULP_DET_PROCESOS_TP"
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
* Nombre:     ULP_DET_PROCESOS_TP
* Proposito:  Package de Tipos: Incluye un "subtipo" por cada columna, un "tipo
* colección" por cada columna, un "tipo record", un tipo "colección de records"
* y un tipo "ref cursor" para la tabla.
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
    K_PACKAGE CONSTANT FDC_DEFS.PACKAGE_NAME_T := 'ULP_DET_PROCESOS_TP';

    subtype proc_id_t is ULP_DET_PROCESOS.proc_id%type;
    subtype secuencia_t is ULP_DET_PROCESOS.secuencia%type;
    subtype nombre_modulo_t is ULP_DET_PROCESOS.nombre_modulo%type;
    subtype tipo_mensaje_t is ULP_DET_PROCESOS.tipo_mensaje%type;
    subtype mensaje_t is ULP_DET_PROCESOS.mensaje%type;
    subtype usuario_cliente_t is ULP_DET_PROCESOS.usuario_cliente%type;
    subtype columna01_t is ULP_DET_PROCESOS.columna01%type;
    subtype columna02_t is ULP_DET_PROCESOS.columna02%type;
    subtype columna03_t is ULP_DET_PROCESOS.columna03%type;
    subtype aud_creado_el_t is ULP_DET_PROCESOS.aud_creado_el%type;
    subtype aud_creado_por_t is ULP_DET_PROCESOS.aud_creado_por%type;
    subtype aud_modificado_el_t is ULP_DET_PROCESOS.aud_modificado_el%type;
    subtype aud_modificado_por_t is ULP_DET_PROCESOS.aud_modificado_por%type;

    type proc_id_ct IS TABLE OF proc_id_t INDEX BY BINARY_INTEGER;
    type secuencia_ct IS TABLE OF secuencia_t INDEX BY BINARY_INTEGER;
    type nombre_modulo_ct IS TABLE OF nombre_modulo_t INDEX BY BINARY_INTEGER;
    type tipo_mensaje_ct IS TABLE OF tipo_mensaje_t INDEX BY BINARY_INTEGER;
    type mensaje_ct IS TABLE OF mensaje_t INDEX BY BINARY_INTEGER;
    type usuario_cliente_ct IS TABLE OF usuario_cliente_t INDEX BY BINARY_INTEGER;
    type columna01_ct IS TABLE OF columna01_t INDEX BY BINARY_INTEGER;
    type columna02_ct IS TABLE OF columna02_t INDEX BY BINARY_INTEGER;
    type columna03_ct IS TABLE OF columna03_t INDEX BY BINARY_INTEGER;
    type aud_creado_el_ct IS TABLE OF aud_creado_el_t INDEX BY BINARY_INTEGER;
    type aud_creado_por_ct IS TABLE OF aud_creado_por_t INDEX BY BINARY_INTEGER;
    type aud_modificado_el_ct IS TABLE OF aud_modificado_el_t INDEX BY BINARY_INTEGER;
    type aud_modificado_por_ct IS TABLE OF aud_modificado_por_t INDEX BY BINARY_INTEGER;

    subtype ULP_DET_PROCESOS_rt is ULP_DET_PROCESOS%rowtype;
    type    ULP_DET_PROCESOS_ct is table of ULP_DET_PROCESOS_rt index by binary_integer;
    type    ULP_DET_PROCESOS_rc is ref cursor;

end ULP_DET_PROCESOS_TP;
/
