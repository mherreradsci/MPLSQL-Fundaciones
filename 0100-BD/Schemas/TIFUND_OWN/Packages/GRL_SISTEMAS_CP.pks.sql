CREATE OR REPLACE PACKAGE "TIFUND_OWN"."GRL_SISTEMAS_CP"
--@!!Start
--@!! Generado por #APPVER#:GECO V1.0 winter 2024
--@!! Timestamp #TMSTMP#:20240822233230
--@!! Autor #AUTHOR#:Marcelo Herrera Tejada
--@!! Tabla #TSHORT#:SIST
--@!! No modifique este código
--@!!End
/*******************************************************************************
* Empresa:    Explora Information Technologies
* Proyecto:   Generador de APIs de tablas
*             GAT
* Nombre:     GRL_SISTEMAS_CP
* Proposito:  Package que implementa las DML o Changes sobre la tabla
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
    K_PACKAGE CONSTANT FDC_DEFS.PACKAGE_NAME_T := 'GRL_SISTEMAS_CP';
    -- Inserta un registro en la tabla GRL_SISTEMAS via un record
    procedure ins(
        p_GRL_SISTEMAS GRL_SISTEMAS_TP.GRL_SISTEMAS_rt
    );

    -- Inserta un registro en la tabla GRL_SISTEMAS via la Lista de Columnas
    procedure ins(
        p_id_sistema IN GRL_SISTEMAS_TP.id_sistema_t
        ,p_nombre IN GRL_SISTEMAS_TP.nombre_t
        ,p_descripcion IN GRL_SISTEMAS_TP.descripcion_t DEFAULT NULL
        ,p_nivel_sistema IN GRL_SISTEMAS_TP.nivel_sistema_t
        ,p_aud_creado_el IN GRL_SISTEMAS_TP.aud_creado_el_t DEFAULT SYSDATE
        ,p_aud_creado_por IN GRL_SISTEMAS_TP.aud_creado_por_t DEFAULT USER
        ,p_aud_modificado_el IN GRL_SISTEMAS_TP.aud_modificado_el_t DEFAULT NULL
        ,p_aud_modificado_por IN GRL_SISTEMAS_TP.aud_modificado_por_t DEFAULT NULL
    );

    -- Inserta (modo bulk) registros en
   -- la tabla GRL_SISTEMAS vía un record de colección de columnas
    procedure ins(
        p_regs GRL_SISTEMAS_TP.GRL_SISTEMAS_ct
    );

    -- Inserta (modo bulk) registros en
   -- la tabla GRL_SISTEMAS vía colecciones de columnas
    procedure ins(
        p_id_sistema IN GRL_SISTEMAS_TP.id_sistema_ct
        ,p_nombre IN GRL_SISTEMAS_TP.nombre_ct
        ,p_descripcion IN GRL_SISTEMAS_TP.descripcion_ct
        ,p_nivel_sistema IN GRL_SISTEMAS_TP.nivel_sistema_ct
        ,p_aud_creado_el IN GRL_SISTEMAS_TP.aud_creado_el_ct
        ,p_aud_creado_por IN GRL_SISTEMAS_TP.aud_creado_por_ct
        ,p_aud_modificado_el IN GRL_SISTEMAS_TP.aud_modificado_el_ct
        ,p_aud_modificado_por IN GRL_SISTEMAS_TP.aud_modificado_por_ct
    );

    -- Actualiza un registro de la tabla GRL_SISTEMAS en función
   -- de la constraint SIST_PK
    procedure upd_SIST_PK(
        p_id_sistema IN GRL_SISTEMAS_TP.id_sistema_t
        ,p_GRL_SISTEMAS IN GRL_SISTEMAS_TP.GRL_SISTEMAS_rt
    );


    -- Actualiza una columna de la tabla GRL_SISTEMAS
   -- en función de un where dinámico
    function upd_por_una_columna(
        p_Nombre_Columna in varchar2,
        p_Valor_Columna in NUMBER,
        p_Where in VARCHAR2
    ) RETURN PLS_INTEGER;

    -- Actualiza una columna de la tabla GRL_SISTEMAS
   -- en función de un where dinámico
    function upd_por_una_columna(
        p_Nombre_Columna in varchar2,
        p_Valor_Columna in DATE,
        p_Where in VARCHAR2
    ) RETURN PLS_INTEGER;

    -- Actualiza una columna de la tabla GRL_SISTEMAS
   -- en función de un where dinámico
    function upd_por_una_columna(
        p_Nombre_Columna in varchar2,
        p_Valor_Columna in VARCHAR2,
        p_Where in VARCHAR2
    ) RETURN PLS_INTEGER;

    -- Actualiza un conjunto de columnas de la tabla
   -- GRL_SISTEMAS en función de la
   -- constraint SIST_PK
    procedure upd_SIST_PK(
        p_id_sistema IN GRL_SISTEMAS_TP.id_sistema_t ,
        p_nombre IN GRL_SISTEMAS_TP.nombre_t DEFAULT set_as_uninvoked_parameter.nlvc2('P2')
        ,p_descripcion IN GRL_SISTEMAS_TP.descripcion_t DEFAULT set_as_uninvoked_parameter.nlvc2('P3')
        ,p_nivel_sistema IN GRL_SISTEMAS_TP.nivel_sistema_t DEFAULT set_as_uninvoked_parameter.nlnum('P4')
        ,p_aud_creado_el IN GRL_SISTEMAS_TP.aud_creado_el_t DEFAULT set_as_uninvoked_parameter.nldate('P5')
        ,p_aud_creado_por IN GRL_SISTEMAS_TP.aud_creado_por_t DEFAULT set_as_uninvoked_parameter.nlvc2('P6')
        ,p_aud_modificado_el IN GRL_SISTEMAS_TP.aud_modificado_el_t DEFAULT set_as_uninvoked_parameter.nldate('P7')
        ,p_aud_modificado_por IN GRL_SISTEMAS_TP.aud_modificado_por_t DEFAULT set_as_uninvoked_parameter.nlvc2('P8')
    );


    -- Borra registro(s) de la tabla GRL_SISTEMAS en
   -- función de la constraint SIST_PK
    function del_SIST_PK(
        p_id_sistema IN GRL_SISTEMAS_TP.id_sistema_t
    ) RETURN SIMPLE_INTEGER;




    -- Borra registro(s) de la tabla GRL_SISTEMAS en
   -- función de un where dinámico
    function del_din(
        p_where in varchar2
    ) RETURN PLS_INTEGER;

    -- Borra registro(s) de la tabla GRL_SISTEMAS en
   -- función de una columna especifica
    function del_por_una_columna(
        p_Nombre_Columna in varchar2,
        p_Valor_Columna in NUMBER
    ) RETURN PLS_INTEGER;

    -- Borra registro(s) de la tabla GRL_SISTEMAS en
   -- función de una columna especifica
    function del_por_una_columna(
        p_Nombre_Columna in varchar2,
        p_Valor_Columna in DATE
    ) RETURN PLS_INTEGER;

    -- Borra registro(s) de la tabla GRL_SISTEMAS en
   -- función de una columna especifica
    function del_por_una_columna(
        p_Nombre_Columna in varchar2,
        p_Valor_Columna in VARCHAR2
    ) RETURN PLS_INTEGER;

end GRL_SISTEMAS_CP;
/
