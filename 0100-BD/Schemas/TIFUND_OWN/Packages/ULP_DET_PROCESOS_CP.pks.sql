CREATE OR REPLACE PACKAGE "TIFUND_OWN"."ULP_DET_PROCESOS_CP"
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
* Nombre:     ULP_DET_PROCESOS_CP
* Proposito:  Package que implementa las DML o Changes sobre la tabla
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
    K_PACKAGE CONSTANT FDC_DEFS.PACKAGE_NAME_T := 'ULP_DET_PROCESOS_CP';
    -- Inserta un registro en la tabla ULP_DET_PROCESOS via un record
    procedure ins(
        p_ULP_DET_PROCESOS ULP_DET_PROCESOS_TP.ULP_DET_PROCESOS_rt
    );

    -- Inserta un registro en la tabla ULP_DET_PROCESOS via la Lista de Columnas
    procedure ins(
        p_proc_id IN ULP_DET_PROCESOS_TP.proc_id_t
        ,p_secuencia IN ULP_DET_PROCESOS_TP.secuencia_t
        ,p_nombre_modulo IN ULP_DET_PROCESOS_TP.nombre_modulo_t
        ,p_tipo_mensaje IN ULP_DET_PROCESOS_TP.tipo_mensaje_t
        ,p_mensaje IN ULP_DET_PROCESOS_TP.mensaje_t DEFAULT NULL
        ,p_usuario_cliente IN ULP_DET_PROCESOS_TP.usuario_cliente_t DEFAULT NULL
        ,p_columna01 IN ULP_DET_PROCESOS_TP.columna01_t DEFAULT NULL
        ,p_columna02 IN ULP_DET_PROCESOS_TP.columna02_t DEFAULT NULL
        ,p_columna03 IN ULP_DET_PROCESOS_TP.columna03_t DEFAULT NULL
        ,p_aud_creado_el IN ULP_DET_PROCESOS_TP.aud_creado_el_t DEFAULT sysdate
        ,p_aud_creado_por IN ULP_DET_PROCESOS_TP.aud_creado_por_t DEFAULT user
        ,p_aud_modificado_el IN ULP_DET_PROCESOS_TP.aud_modificado_el_t DEFAULT NULL
        ,p_aud_modificado_por IN ULP_DET_PROCESOS_TP.aud_modificado_por_t DEFAULT NULL
    );

    -- Inserta (modo bulk) registros en
   -- la tabla ULP_DET_PROCESOS vía un record de colección de columnas
    procedure ins(
        p_regs ULP_DET_PROCESOS_TP.ULP_DET_PROCESOS_ct
    );

    -- Inserta (modo bulk) registros en
   -- la tabla ULP_DET_PROCESOS vía colecciones de columnas
    procedure ins(
        p_proc_id IN ULP_DET_PROCESOS_TP.proc_id_ct
        ,p_secuencia IN ULP_DET_PROCESOS_TP.secuencia_ct
        ,p_nombre_modulo IN ULP_DET_PROCESOS_TP.nombre_modulo_ct
        ,p_tipo_mensaje IN ULP_DET_PROCESOS_TP.tipo_mensaje_ct
        ,p_mensaje IN ULP_DET_PROCESOS_TP.mensaje_ct
        ,p_usuario_cliente IN ULP_DET_PROCESOS_TP.usuario_cliente_ct
        ,p_columna01 IN ULP_DET_PROCESOS_TP.columna01_ct
        ,p_columna02 IN ULP_DET_PROCESOS_TP.columna02_ct
        ,p_columna03 IN ULP_DET_PROCESOS_TP.columna03_ct
        ,p_aud_creado_el IN ULP_DET_PROCESOS_TP.aud_creado_el_ct
        ,p_aud_creado_por IN ULP_DET_PROCESOS_TP.aud_creado_por_ct
        ,p_aud_modificado_el IN ULP_DET_PROCESOS_TP.aud_modificado_el_ct
        ,p_aud_modificado_por IN ULP_DET_PROCESOS_TP.aud_modificado_por_ct
    );

    -- Actualiza un registro de la tabla ULP_DET_PROCESOS en función
   -- de la constraint DEPR_PK
    procedure upd_DEPR_PK(
        p_proc_id IN ULP_DET_PROCESOS_TP.proc_id_t
        ,p_secuencia IN ULP_DET_PROCESOS_TP.secuencia_t
        ,p_ULP_DET_PROCESOS IN ULP_DET_PROCESOS_TP.ULP_DET_PROCESOS_rt
    );


    -- Actualiza una columna de la tabla ULP_DET_PROCESOS
   -- en función de un where dinámico
    function upd_por_una_columna(
        p_Nombre_Columna in varchar2,
        p_Valor_Columna in NUMBER,
        p_Where in VARCHAR2
    ) RETURN PLS_INTEGER;

    -- Actualiza una columna de la tabla ULP_DET_PROCESOS
   -- en función de un where dinámico
    function upd_por_una_columna(
        p_Nombre_Columna in varchar2,
        p_Valor_Columna in DATE,
        p_Where in VARCHAR2
    ) RETURN PLS_INTEGER;

    -- Actualiza una columna de la tabla ULP_DET_PROCESOS
   -- en función de un where dinámico
    function upd_por_una_columna(
        p_Nombre_Columna in varchar2,
        p_Valor_Columna in VARCHAR2,
        p_Where in VARCHAR2
    ) RETURN PLS_INTEGER;

    -- Actualiza un conjunto de columnas de la tabla
   -- ULP_DET_PROCESOS en función de la
   -- constraint DEPR_PK
    procedure upd_DEPR_PK(
        p_proc_id IN ULP_DET_PROCESOS_TP.proc_id_t
        ,p_secuencia IN ULP_DET_PROCESOS_TP.secuencia_t ,
        p_nombre_modulo IN ULP_DET_PROCESOS_TP.nombre_modulo_t DEFAULT set_as_uninvoked_parameter.nlvc2('P3')
        ,p_tipo_mensaje IN ULP_DET_PROCESOS_TP.tipo_mensaje_t DEFAULT set_as_uninvoked_parameter.nlvc2('P4')
        ,p_mensaje IN ULP_DET_PROCESOS_TP.mensaje_t DEFAULT set_as_uninvoked_parameter.nlvc2('P5')
        ,p_usuario_cliente IN ULP_DET_PROCESOS_TP.usuario_cliente_t DEFAULT set_as_uninvoked_parameter.nlvc2('P6')
        ,p_columna01 IN ULP_DET_PROCESOS_TP.columna01_t DEFAULT set_as_uninvoked_parameter.nlvc2('P7')
        ,p_columna02 IN ULP_DET_PROCESOS_TP.columna02_t DEFAULT set_as_uninvoked_parameter.nlvc2('P8')
        ,p_columna03 IN ULP_DET_PROCESOS_TP.columna03_t DEFAULT set_as_uninvoked_parameter.nlvc2('P9')
        ,p_aud_creado_el IN ULP_DET_PROCESOS_TP.aud_creado_el_t DEFAULT set_as_uninvoked_parameter.nldate('P10')
        ,p_aud_creado_por IN ULP_DET_PROCESOS_TP.aud_creado_por_t DEFAULT set_as_uninvoked_parameter.nlvc2('P11')
        ,p_aud_modificado_el IN ULP_DET_PROCESOS_TP.aud_modificado_el_t DEFAULT set_as_uninvoked_parameter.nldate('P12')
        ,p_aud_modificado_por IN ULP_DET_PROCESOS_TP.aud_modificado_por_t DEFAULT set_as_uninvoked_parameter.nlvc2('P13')
    );


    -- Borra registro(s) de la tabla ULP_DET_PROCESOS en
   -- función de la constraint DEPR_PK
    function del_DEPR_PK(
        p_proc_id IN ULP_DET_PROCESOS_TP.proc_id_t
        ,p_secuencia IN ULP_DET_PROCESOS_TP.secuencia_t
    ) RETURN SIMPLE_INTEGER;



    -- Borra registro(s) de la tabla ULP_DET_PROCESOS en
   -- función de la constraint DEPR_PROC_FK
    function del_DEPR_PROC_FK(
        p_proc_id IN ULP_DET_PROCESOS_TP.proc_id_t
    ) RETURN SIMPLE_INTEGER;


    -- Borra registro(s) de la tabla ULP_DET_PROCESOS en
   -- función de un where dinámico
    function del_din(
        p_where in varchar2
    ) RETURN PLS_INTEGER;

    -- Borra registro(s) de la tabla ULP_DET_PROCESOS en
   -- función de una columna especifica
    function del_por_una_columna(
        p_Nombre_Columna in varchar2,
        p_Valor_Columna in NUMBER
    ) RETURN PLS_INTEGER;

    -- Borra registro(s) de la tabla ULP_DET_PROCESOS en
   -- función de una columna especifica
    function del_por_una_columna(
        p_Nombre_Columna in varchar2,
        p_Valor_Columna in DATE
    ) RETURN PLS_INTEGER;

    -- Borra registro(s) de la tabla ULP_DET_PROCESOS en
   -- función de una columna especifica
    function del_por_una_columna(
        p_Nombre_Columna in varchar2,
        p_Valor_Columna in VARCHAR2
    ) RETURN PLS_INTEGER;

end ULP_DET_PROCESOS_CP;
/
