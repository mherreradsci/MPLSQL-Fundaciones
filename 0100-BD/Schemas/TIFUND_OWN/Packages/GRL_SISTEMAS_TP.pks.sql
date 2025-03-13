CREATE OR REPLACE PACKAGE "TIFUND_OWN"."GRL_SISTEMAS_TP"
--@!!Start
--@!! Generado por #APPVER#:GECO V1.0 winter 2024
--@!! Timestamp #TMSTMP#:20240822233229
--@!! Autor #AUTHOR#:Marcelo Herrera Tejada
--@!! Tabla #TSHORT#:SIST
--@!! No modifique este código
--@!!End
/*******************************************************************************
* Empresa:    Explora Information Technologies
* Proyecto:   Generador de APIs de tablas
*             GAT
* Nombre:     GRL_SISTEMAS_TP
* Proposito:  Package de Tipos: Incluye un "subtipo" por cada columna, un "tipo
* colección" por cada columna, un "tipo record", un tipo "colección de records"
* y un tipo "ref cursor" para la tabla.
* Tabla:      GRL_SISTEMAS
* Descipción de la tabla:
* --** No disponible **--
*
* Cuando      Quien        Que
* ----------- ------------ -----------------------------------------------------
* 12-Aug-2024 MHERRERA     Creación
*******************************************************************************/
 is

    -- Constantes para identificar el package
    K_PACKAGE CONSTANT FDC_DEFS.PACKAGE_NAME_T := 'GRL_SISTEMAS_TP';

    subtype SIST_CODIGO_t is GRL_SISTEMAS.SIST_CODIGO%type;
    subtype nombre_t is GRL_SISTEMAS.nombre%type;
    subtype descripcion_t is GRL_SISTEMAS.descripcion%type;
    subtype nivel_sistema_t is GRL_SISTEMAS.nivel_sistema%type;
    subtype aud_creado_el_t is GRL_SISTEMAS.aud_creado_el%type;
    subtype aud_creado_por_t is GRL_SISTEMAS.aud_creado_por%type;
    subtype aud_modificado_el_t is GRL_SISTEMAS.aud_modificado_el%type;
    subtype aud_modificado_por_t is GRL_SISTEMAS.aud_modificado_por%type;

    type SIST_CODIGO_ct IS TABLE OF SIST_CODIGO_t INDEX BY BINARY_INTEGER;
    type nombre_ct IS TABLE OF nombre_t INDEX BY BINARY_INTEGER;
    type descripcion_ct IS TABLE OF descripcion_t INDEX BY BINARY_INTEGER;
    type nivel_sistema_ct IS TABLE OF nivel_sistema_t INDEX BY BINARY_INTEGER;
    type aud_creado_el_ct IS TABLE OF aud_creado_el_t INDEX BY BINARY_INTEGER;
    type aud_creado_por_ct IS TABLE OF aud_creado_por_t INDEX BY BINARY_INTEGER;
    type aud_modificado_el_ct IS TABLE OF aud_modificado_el_t INDEX BY BINARY_INTEGER;
    type aud_modificado_por_ct IS TABLE OF aud_modificado_por_t INDEX BY BINARY_INTEGER;

    subtype GRL_SISTEMAS_rt is GRL_SISTEMAS%rowtype;
    type    GRL_SISTEMAS_ct is table of GRL_SISTEMAS_rt index by binary_integer;
    type    GRL_SISTEMAS_rc is ref cursor;

end GRL_SISTEMAS_TP;
/
