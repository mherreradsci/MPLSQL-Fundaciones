CREATE OR REPLACE PACKAGE "TIFUND_OWN"."GRL_COMPOSICION_SISTEMAS_CP"
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
* Nombre:     GRL_COMPOSICION_SISTEMAS_CP
* Proposito:  Package que implementa las DML o Changes sobre la tabla
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
    K_PACKAGE CONSTANT FDC_DEFS.PACKAGE_NAME_T := 'GRL_COMPOSICION_SISTEMAS_CP';
    -- Inserta un registro en la tabla GRL_COMPOSICION_SISTEMAS via un record
    procedure ins(
        p_GRL_COMPOSICION_SISTEMAS GRL_COMPOSICION_SISTEMAS_TP.GRL_COMPOSICION_SISTEMAS_rt
    );

    -- Inserta un registro en la tabla GRL_COMPOSICION_SISTEMAS via la Lista de Columnas
    procedure ins(
        p_sist_codigo IN GRL_COMPOSICION_SISTEMAS_TP.sist_codigo_t
        ,p_sist_codigo_subsistema IN GRL_COMPOSICION_SISTEMAS_TP.sist_codigo_subsistema_t
        ,p_nombre_proyecto IN GRL_COMPOSICION_SISTEMAS_TP.nombre_proyecto_t
        ,p_aud_creado_el IN GRL_COMPOSICION_SISTEMAS_TP.aud_creado_el_t DEFAULT sysdate
        ,p_aud_creado_por IN GRL_COMPOSICION_SISTEMAS_TP.aud_creado_por_t DEFAULT user
        ,p_aud_modificado_el IN GRL_COMPOSICION_SISTEMAS_TP.aud_modificado_el_t DEFAULT NULL
        ,p_aud_modificado_por IN GRL_COMPOSICION_SISTEMAS_TP.aud_modificado_por_t DEFAULT NULL
    );

    -- Inserta (modo bulk) registros en
   -- la tabla GRL_COMPOSICION_SISTEMAS vía un record de colección de columnas
    procedure ins(
        p_regs GRL_COMPOSICION_SISTEMAS_TP.GRL_COMPOSICION_SISTEMAS_ct
    );

    -- Inserta (modo bulk) registros en
   -- la tabla GRL_COMPOSICION_SISTEMAS vía colecciones de columnas
    procedure ins(
        p_sist_codigo IN GRL_COMPOSICION_SISTEMAS_TP.sist_codigo_ct
        ,p_sist_codigo_subsistema IN GRL_COMPOSICION_SISTEMAS_TP.sist_codigo_subsistema_ct
        ,p_nombre_proyecto IN GRL_COMPOSICION_SISTEMAS_TP.nombre_proyecto_ct
        ,p_aud_creado_el IN GRL_COMPOSICION_SISTEMAS_TP.aud_creado_el_ct
        ,p_aud_creado_por IN GRL_COMPOSICION_SISTEMAS_TP.aud_creado_por_ct
        ,p_aud_modificado_el IN GRL_COMPOSICION_SISTEMAS_TP.aud_modificado_el_ct
        ,p_aud_modificado_por IN GRL_COMPOSICION_SISTEMAS_TP.aud_modificado_por_ct
    );

    -- Actualiza un registro de la tabla GRL_COMPOSICION_SISTEMAS en función
   -- de la constraint COSI_PK
    procedure upd_COSI_PK(
        p_sist_codigo IN GRL_COMPOSICION_SISTEMAS_TP.sist_codigo_t
        ,p_sist_codigo_subsistema IN GRL_COMPOSICION_SISTEMAS_TP.sist_codigo_subsistema_t
        ,p_GRL_COMPOSICION_SISTEMAS IN GRL_COMPOSICION_SISTEMAS_TP.GRL_COMPOSICION_SISTEMAS_rt
    );


    -- Actualiza una columna de la tabla GRL_COMPOSICION_SISTEMAS
   -- en función de un where dinámico
    function upd_por_una_columna(
        p_Nombre_Columna in varchar2,
        p_Valor_Columna in NUMBER,
        p_Where in VARCHAR2
    ) RETURN PLS_INTEGER;

    -- Actualiza una columna de la tabla GRL_COMPOSICION_SISTEMAS
   -- en función de un where dinámico
    function upd_por_una_columna(
        p_Nombre_Columna in varchar2,
        p_Valor_Columna in DATE,
        p_Where in VARCHAR2
    ) RETURN PLS_INTEGER;

    -- Actualiza una columna de la tabla GRL_COMPOSICION_SISTEMAS
   -- en función de un where dinámico
    function upd_por_una_columna(
        p_Nombre_Columna in varchar2,
        p_Valor_Columna in VARCHAR2,
        p_Where in VARCHAR2
    ) RETURN PLS_INTEGER;

    -- Actualiza un conjunto de columnas de la tabla
   -- GRL_COMPOSICION_SISTEMAS en función de la
   -- constraint COSI_PK
    procedure upd_COSI_PK(
        p_sist_codigo IN GRL_COMPOSICION_SISTEMAS_TP.sist_codigo_t
        ,p_sist_codigo_subsistema IN GRL_COMPOSICION_SISTEMAS_TP.sist_codigo_subsistema_t ,
        p_nombre_proyecto IN GRL_COMPOSICION_SISTEMAS_TP.nombre_proyecto_t DEFAULT set_as_uninvoked_parameter.nlvc2('P3')
        ,p_aud_creado_el IN GRL_COMPOSICION_SISTEMAS_TP.aud_creado_el_t DEFAULT set_as_uninvoked_parameter.nldate('P4')
        ,p_aud_creado_por IN GRL_COMPOSICION_SISTEMAS_TP.aud_creado_por_t DEFAULT set_as_uninvoked_parameter.nlvc2('P5')
        ,p_aud_modificado_el IN GRL_COMPOSICION_SISTEMAS_TP.aud_modificado_el_t DEFAULT set_as_uninvoked_parameter.nldate('P6')
        ,p_aud_modificado_por IN GRL_COMPOSICION_SISTEMAS_TP.aud_modificado_por_t DEFAULT set_as_uninvoked_parameter.nlvc2('P7')
    );


    -- Borra registro(s) de la tabla GRL_COMPOSICION_SISTEMAS en
   -- función de la constraint COSI_PK
    function del_COSI_PK(
        p_sist_codigo IN GRL_COMPOSICION_SISTEMAS_TP.sist_codigo_t
        ,p_sist_codigo_subsistema IN GRL_COMPOSICION_SISTEMAS_TP.sist_codigo_subsistema_t
    ) RETURN SIMPLE_INTEGER;



    -- Borra registro(s) de la tabla GRL_COMPOSICION_SISTEMAS en
   -- función de la constraint COSI_SIST_COMPUESTO_DE_FK
    function del_COSI_SIST_COMPUESTO_DE_FK(
        p_sist_codigo_subsistema IN GRL_COMPOSICION_SISTEMAS_TP.sist_codigo_subsistema_t
    ) RETURN SIMPLE_INTEGER;

    -- Borra registro(s) de la tabla GRL_COMPOSICION_SISTEMAS en
   -- función de la constraint COSI_SIST_COMPUESTO_POR_FK
    function del_COSI_SIST_COMPUESTO_POR_FK(
        p_sist_codigo IN GRL_COMPOSICION_SISTEMAS_TP.sist_codigo_t
    ) RETURN SIMPLE_INTEGER;


    -- Borra registro(s) de la tabla GRL_COMPOSICION_SISTEMAS en
   -- función de un where dinámico
    function del_din(
        p_where in varchar2
    ) RETURN PLS_INTEGER;

    -- Borra registro(s) de la tabla GRL_COMPOSICION_SISTEMAS en
   -- función de una columna especifica
    function del_por_una_columna(
        p_Nombre_Columna in varchar2,
        p_Valor_Columna in NUMBER
    ) RETURN PLS_INTEGER;

    -- Borra registro(s) de la tabla GRL_COMPOSICION_SISTEMAS en
   -- función de una columna especifica
    function del_por_una_columna(
        p_Nombre_Columna in varchar2,
        p_Valor_Columna in DATE
    ) RETURN PLS_INTEGER;

    -- Borra registro(s) de la tabla GRL_COMPOSICION_SISTEMAS en
   -- función de una columna especifica
    function del_por_una_columna(
        p_Nombre_Columna in varchar2,
        p_Valor_Columna in VARCHAR2
    ) RETURN PLS_INTEGER;

end GRL_COMPOSICION_SISTEMAS_CP;
/
