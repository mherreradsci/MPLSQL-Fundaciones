CREATE OR REPLACE PACKAGE "TIFUND_OWN"."UER_ERRORES_CP"
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
* Nombre:     UER_ERRORES_CP
* Proposito:  Package que implementa las DML o Changes sobre la tabla
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
    K_PACKAGE CONSTANT FDC_DEFS.PACKAGE_NAME_T := 'UER_ERRORES_CP';
    function siguiente_clave (p_secuencia IN VARCHAR2 DEFAULT 'UER_ERRORES_SEC')
        RETURN NUMBER;

    -- Inserta un registro en la tabla UER_ERRORES via un record
    procedure ins(
        p_UER_ERRORES UER_ERRORES_TP.UER_ERRORES_rt
    );

    -- Inserta un registro en la tabla UER_ERRORES via la Lista de Columnas
    procedure ins(
        p_erro_id IN UER_ERRORES_TP.erro_id_t
        ,p_programa IN UER_ERRORES_TP.programa_t
        ,p_mensaje IN UER_ERRORES_TP.mensaje_t DEFAULT NULL
        ,p_aud_creado_por IN UER_ERRORES_TP.aud_creado_por_t DEFAULT USER
        ,p_aud_creado_en IN UER_ERRORES_TP.aud_creado_en_t DEFAULT LOCALTIMESTAMP
        ,p_aud_modificado_por IN UER_ERRORES_TP.aud_modificado_por_t DEFAULT NULL
        ,p_aud_modificado_en IN UER_ERRORES_TP.aud_modificado_en_t DEFAULT NULL
        ,p_lopr_id IN UER_ERRORES_TP.lopr_id_t DEFAULT NULL
    );

    -- Inserta (modo bulk) registros en
   -- la tabla UER_ERRORES vía un record de colección de columnas
    procedure ins(
        p_regs UER_ERRORES_TP.UER_ERRORES_ct
    );

    -- Inserta (modo bulk) registros en
   -- la tabla UER_ERRORES vía colecciones de columnas
    procedure ins(
        p_erro_id IN UER_ERRORES_TP.erro_id_ct
        ,p_programa IN UER_ERRORES_TP.programa_ct
        ,p_mensaje IN UER_ERRORES_TP.mensaje_ct
        ,p_aud_creado_por IN UER_ERRORES_TP.aud_creado_por_ct
        ,p_aud_creado_en IN UER_ERRORES_TP.aud_creado_en_ct
        ,p_aud_modificado_por IN UER_ERRORES_TP.aud_modificado_por_ct
        ,p_aud_modificado_en IN UER_ERRORES_TP.aud_modificado_en_ct
        ,p_lopr_id IN UER_ERRORES_TP.lopr_id_ct
    );

    -- Actualiza un registro de la tabla UER_ERRORES en función
   -- de la constraint ERRO_PK
    procedure upd_ERRO_PK(
        p_erro_id IN UER_ERRORES_TP.erro_id_t
        ,p_UER_ERRORES IN UER_ERRORES_TP.UER_ERRORES_rt
    );


    -- Actualiza una columna de la tabla UER_ERRORES
   -- en función de un where dinámico
    function upd_por_una_columna(
        p_Nombre_Columna in varchar2,
        p_Valor_Columna in NUMBER,
        p_Where in VARCHAR2
    ) RETURN PLS_INTEGER;

    -- Actualiza una columna de la tabla UER_ERRORES
   -- en función de un where dinámico
    function upd_por_una_columna(
        p_Nombre_Columna in varchar2,
        p_Valor_Columna in DATE,
        p_Where in VARCHAR2
    ) RETURN PLS_INTEGER;

    -- Actualiza una columna de la tabla UER_ERRORES
   -- en función de un where dinámico
    function upd_por_una_columna(
        p_Nombre_Columna in varchar2,
        p_Valor_Columna in VARCHAR2,
        p_Where in VARCHAR2
    ) RETURN PLS_INTEGER;

    -- Actualiza un conjunto de columnas de la tabla
   -- UER_ERRORES en función de la
   -- constraint ERRO_PK
    procedure upd_ERRO_PK(
        p_erro_id IN UER_ERRORES_TP.erro_id_t ,
        p_programa IN UER_ERRORES_TP.programa_t DEFAULT set_as_uninvoked_parameter.nlvc2('P2')
        ,p_mensaje IN UER_ERRORES_TP.mensaje_t DEFAULT set_as_uninvoked_parameter.nlvc2('P3')
        ,p_aud_creado_por IN UER_ERRORES_TP.aud_creado_por_t DEFAULT set_as_uninvoked_parameter.nlvc2('P4')
        ,p_aud_creado_en IN UER_ERRORES_TP.aud_creado_en_t DEFAULT set_as_uninvoked_parameter.nlts('P5')
        ,p_aud_modificado_por IN UER_ERRORES_TP.aud_modificado_por_t DEFAULT set_as_uninvoked_parameter.nlvc2('P6')
        ,p_aud_modificado_en IN UER_ERRORES_TP.aud_modificado_en_t DEFAULT set_as_uninvoked_parameter.nlts('P7')
        ,p_lopr_id IN UER_ERRORES_TP.lopr_id_t DEFAULT set_as_uninvoked_parameter.nlnum('P8')
    );


    -- Borra registro(s) de la tabla UER_ERRORES en
   -- función de la constraint ERRO_PK
    function del_ERRO_PK(
        p_erro_id IN UER_ERRORES_TP.erro_id_t
    ) RETURN SIMPLE_INTEGER;




    -- Borra registro(s) de la tabla UER_ERRORES en
   -- función de un where dinámico
    function del_din(
        p_where in varchar2
    ) RETURN PLS_INTEGER;

    -- Borra registro(s) de la tabla UER_ERRORES en
   -- función de una columna especifica
    function del_por_una_columna(
        p_Nombre_Columna in varchar2,
        p_Valor_Columna in NUMBER
    ) RETURN PLS_INTEGER;

    -- Borra registro(s) de la tabla UER_ERRORES en
   -- función de una columna especifica
    function del_por_una_columna(
        p_Nombre_Columna in varchar2,
        p_Valor_Columna in DATE
    ) RETURN PLS_INTEGER;

    -- Borra registro(s) de la tabla UER_ERRORES en
   -- función de una columna especifica
    function del_por_una_columna(
        p_Nombre_Columna in varchar2,
        p_Valor_Columna in VARCHAR2
    ) RETURN PLS_INTEGER;

end UER_ERRORES_CP;
/
