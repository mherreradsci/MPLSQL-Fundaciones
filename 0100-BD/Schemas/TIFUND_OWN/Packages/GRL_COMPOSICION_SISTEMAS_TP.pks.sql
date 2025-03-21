CREATE OR REPLACE PACKAGE "TIFUND_OWN"."GRL_COMPOSICION_SISTEMAS_TP"
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
* Nombre:     GRL_COMPOSICION_SISTEMAS_TP
* Proposito:  Package de Tipos: Incluye un "subtipo" por cada columna, un "tipo
* colección" por cada columna, un "tipo record", un tipo "colección de records"
* y un tipo "ref cursor" para la tabla.
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
    K_PACKAGE CONSTANT FDC_DEFS.PACKAGE_NAME_T := 'GRL_COMPOSICION_SISTEMAS_TP';

    subtype sist_codigo_t is GRL_COMPOSICION_SISTEMAS.sist_codigo%type;
    subtype sist_codigo_subsistema_t is GRL_COMPOSICION_SISTEMAS.sist_codigo_subsistema%type;
    subtype nombre_proyecto_t is GRL_COMPOSICION_SISTEMAS.nombre_proyecto%type;
    subtype aud_creado_el_t is GRL_COMPOSICION_SISTEMAS.aud_creado_el%type;
    subtype aud_creado_por_t is GRL_COMPOSICION_SISTEMAS.aud_creado_por%type;
    subtype aud_modificado_el_t is GRL_COMPOSICION_SISTEMAS.aud_modificado_el%type;
    subtype aud_modificado_por_t is GRL_COMPOSICION_SISTEMAS.aud_modificado_por%type;

    type sist_codigo_ct IS TABLE OF sist_codigo_t INDEX BY BINARY_INTEGER;
    type sist_codigo_subsistema_ct IS TABLE OF sist_codigo_subsistema_t INDEX BY BINARY_INTEGER;
    type nombre_proyecto_ct IS TABLE OF nombre_proyecto_t INDEX BY BINARY_INTEGER;
    type aud_creado_el_ct IS TABLE OF aud_creado_el_t INDEX BY BINARY_INTEGER;
    type aud_creado_por_ct IS TABLE OF aud_creado_por_t INDEX BY BINARY_INTEGER;
    type aud_modificado_el_ct IS TABLE OF aud_modificado_el_t INDEX BY BINARY_INTEGER;
    type aud_modificado_por_ct IS TABLE OF aud_modificado_por_t INDEX BY BINARY_INTEGER;

    subtype GRL_COMPOSICION_SISTEMAS_rt is GRL_COMPOSICION_SISTEMAS%rowtype;
    type    GRL_COMPOSICION_SISTEMAS_ct is table of GRL_COMPOSICION_SISTEMAS_rt index by binary_integer;
    type    GRL_COMPOSICION_SISTEMAS_rc is ref cursor;

end GRL_COMPOSICION_SISTEMAS_TP;
/
