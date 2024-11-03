CREATE OR REPLACE 
package  TIFUND_OWN.ULP_PROCESOS_CP
--@!!Start
--@!! Generado por #APPVER#:GECO V1.0 winter 2024
--@!! Timestamp #TMSTMP#:20241020223224
--@!! Autor #AUTHOR#:Marcelo Herrera Tejada
--@!! Tabla #TSHORT#:PROC
--@!! No modifique este código
--@!!End
/*******************************************************************************
* Empresa:    Explora Information Technologies
* Proyecto:   Generador de APIs de tablas
*             GAT
* Nombre:     ULP_PROCESOS_CP
* Proposito:  Package que implementa las DML o Changes sobre la tabla
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
    K_PACKAGE CONSTANT FDC_DEFS.PACKAGE_NAME_T := 'ULP_PROCESOS_CP';
    -- Inserta un registro en la tabla ULP_PROCESOS via un record
    procedure ins(
        p_ULP_PROCESOS ULP_PROCESOS_TP.ULP_PROCESOS_rt
    );
     
    -- Inserta un registro en la tabla ULP_PROCESOS via la Lista de Columnas
    procedure ins(
        p_id IN ULP_PROCESOS_TP.id_t 
        ,p_proc_id IN ULP_PROCESOS_TP.proc_id_t DEFAULT NULL
        ,p_sist_id_sistema IN ULP_PROCESOS_TP.sist_id_sistema_t 
        ,p_nombre_proceso IN ULP_PROCESOS_TP.nombre_proceso_t 
        ,p_fecha_inicio IN ULP_PROCESOS_TP.fecha_inicio_t DEFAULT sysdate               
        ,p_fecha_termino IN ULP_PROCESOS_TP.fecha_termino_t DEFAULT NULL
        ,p_comentario IN ULP_PROCESOS_TP.comentario_t DEFAULT NULL
        ,p_estado IN ULP_PROCESOS_TP.estado_t DEFAULT 'AB'                  
        ,p_usuario_cliente IN ULP_PROCESOS_TP.usuario_cliente_t DEFAULT NULL
        ,p_columna01 IN ULP_PROCESOS_TP.columna01_t DEFAULT NULL
        ,p_columna02 IN ULP_PROCESOS_TP.columna02_t DEFAULT NULL
        ,p_columna03 IN ULP_PROCESOS_TP.columna03_t DEFAULT NULL
        ,p_aud_creado_el IN ULP_PROCESOS_TP.aud_creado_el_t DEFAULT sysdate               
        ,p_aud_creado_por IN ULP_PROCESOS_TP.aud_creado_por_t DEFAULT user                  
        ,p_aud_modificado_el IN ULP_PROCESOS_TP.aud_modificado_el_t DEFAULT NULL
        ,p_aud_modificado_por IN ULP_PROCESOS_TP.aud_modificado_por_t DEFAULT NULL
    );
     
    -- Inserta (modo bulk) registros en 
   -- la tabla ULP_PROCESOS vía un record de colección de columnas
    procedure ins(
        p_regs ULP_PROCESOS_TP.ULP_PROCESOS_ct
    );
     
    -- Inserta (modo bulk) registros en 
   -- la tabla ULP_PROCESOS vía colecciones de columnas
    procedure ins(
        p_id IN ULP_PROCESOS_TP.id_ct 
        ,p_proc_id IN ULP_PROCESOS_TP.proc_id_ct 
        ,p_sist_id_sistema IN ULP_PROCESOS_TP.sist_id_sistema_ct 
        ,p_nombre_proceso IN ULP_PROCESOS_TP.nombre_proceso_ct 
        ,p_fecha_inicio IN ULP_PROCESOS_TP.fecha_inicio_ct 
        ,p_fecha_termino IN ULP_PROCESOS_TP.fecha_termino_ct 
        ,p_comentario IN ULP_PROCESOS_TP.comentario_ct 
        ,p_estado IN ULP_PROCESOS_TP.estado_ct 
        ,p_usuario_cliente IN ULP_PROCESOS_TP.usuario_cliente_ct 
        ,p_columna01 IN ULP_PROCESOS_TP.columna01_ct 
        ,p_columna02 IN ULP_PROCESOS_TP.columna02_ct 
        ,p_columna03 IN ULP_PROCESOS_TP.columna03_ct 
        ,p_aud_creado_el IN ULP_PROCESOS_TP.aud_creado_el_ct 
        ,p_aud_creado_por IN ULP_PROCESOS_TP.aud_creado_por_ct 
        ,p_aud_modificado_el IN ULP_PROCESOS_TP.aud_modificado_el_ct 
        ,p_aud_modificado_por IN ULP_PROCESOS_TP.aud_modificado_por_ct 
    );
     
    -- Actualiza un registro de la tabla ULP_PROCESOS en función 
   -- de la constraint PROC_PK
    procedure upd_PROC_PK( 
        p_id IN ULP_PROCESOS_TP.id_t 
        ,p_ULP_PROCESOS IN ULP_PROCESOS_TP.ULP_PROCESOS_rt
    );
     
     
    -- Actualiza una columna de la tabla ULP_PROCESOS 
   -- en función de un where dinámico
    function upd_por_una_columna(
        p_Nombre_Columna in varchar2,
        p_Valor_Columna in NUMBER,
        p_Where in VARCHAR2
    ) RETURN PLS_INTEGER;
     
    -- Actualiza una columna de la tabla ULP_PROCESOS 
   -- en función de un where dinámico
    function upd_por_una_columna(
        p_Nombre_Columna in varchar2,
        p_Valor_Columna in DATE,
        p_Where in VARCHAR2
    ) RETURN PLS_INTEGER;
     
    -- Actualiza una columna de la tabla ULP_PROCESOS 
   -- en función de un where dinámico
    function upd_por_una_columna(
        p_Nombre_Columna in varchar2,
        p_Valor_Columna in VARCHAR2,
        p_Where in VARCHAR2
    ) RETURN PLS_INTEGER;
     
    -- Actualiza un conjunto de columnas de la tabla
   -- ULP_PROCESOS en función de la
   -- constraint PROC_PK
    procedure upd_PROC_PK( 
        p_id IN ULP_PROCESOS_TP.id_t ,
        p_proc_id IN ULP_PROCESOS_TP.proc_id_t DEFAULT set_as_uninvoked_parameter.nlnum('P2')
        ,p_sist_id_sistema IN ULP_PROCESOS_TP.sist_id_sistema_t DEFAULT set_as_uninvoked_parameter.nlvc2('P3')
        ,p_nombre_proceso IN ULP_PROCESOS_TP.nombre_proceso_t DEFAULT set_as_uninvoked_parameter.nlvc2('P4')
        ,p_fecha_inicio IN ULP_PROCESOS_TP.fecha_inicio_t DEFAULT set_as_uninvoked_parameter.nldate('P5')
        ,p_fecha_termino IN ULP_PROCESOS_TP.fecha_termino_t DEFAULT set_as_uninvoked_parameter.nldate('P6')
        ,p_comentario IN ULP_PROCESOS_TP.comentario_t DEFAULT set_as_uninvoked_parameter.nlvc2('P7')
        ,p_estado IN ULP_PROCESOS_TP.estado_t DEFAULT set_as_uninvoked_parameter.nlvc2('P8')
        ,p_usuario_cliente IN ULP_PROCESOS_TP.usuario_cliente_t DEFAULT set_as_uninvoked_parameter.nlvc2('P9')
        ,p_columna01 IN ULP_PROCESOS_TP.columna01_t DEFAULT set_as_uninvoked_parameter.nlvc2('P10')
        ,p_columna02 IN ULP_PROCESOS_TP.columna02_t DEFAULT set_as_uninvoked_parameter.nlvc2('P11')
        ,p_columna03 IN ULP_PROCESOS_TP.columna03_t DEFAULT set_as_uninvoked_parameter.nlvc2('P12')
        ,p_aud_creado_el IN ULP_PROCESOS_TP.aud_creado_el_t DEFAULT set_as_uninvoked_parameter.nldate('P13')
        ,p_aud_creado_por IN ULP_PROCESOS_TP.aud_creado_por_t DEFAULT set_as_uninvoked_parameter.nlvc2('P14')
        ,p_aud_modificado_el IN ULP_PROCESOS_TP.aud_modificado_el_t DEFAULT set_as_uninvoked_parameter.nldate('P15')
        ,p_aud_modificado_por IN ULP_PROCESOS_TP.aud_modificado_por_t DEFAULT set_as_uninvoked_parameter.nlvc2('P16')
    );
     
     
    -- Borra registro(s) de la tabla ULP_PROCESOS en
   -- función de la constraint PROC_PK
    function del_PROC_PK( 
        p_id IN ULP_PROCESOS_TP.id_t 
    ) RETURN SIMPLE_INTEGER;
     
     
     
    -- Borra registro(s) de la tabla ULP_PROCESOS en
   -- función de la constraint PROC_PROC_FK
    function del_PROC_PROC_FK( 
        p_proc_id IN ULP_PROCESOS_TP.proc_id_t 
    ) RETURN SIMPLE_INTEGER;
     
    -- Borra registro(s) de la tabla ULP_PROCESOS en
   -- función de la constraint ULP_PROCESOS_GRL_SISTEMAS_FK
    function del_ULP_PROCESOS_GRL_SISTEMAS_( 
        p_sist_id_sistema IN ULP_PROCESOS_TP.sist_id_sistema_t 
    ) RETURN SIMPLE_INTEGER;
     
     
    -- Borra registro(s) de la tabla ULP_PROCESOS en 
   -- función de un where dinámico
    function del_din(
        p_where in varchar2
    ) RETURN PLS_INTEGER;
     
    -- Borra registro(s) de la tabla ULP_PROCESOS en 
   -- función de una columna especifica
    function del_por_una_columna(
        p_Nombre_Columna in varchar2,
        p_Valor_Columna in NUMBER
    ) RETURN PLS_INTEGER;
     
    -- Borra registro(s) de la tabla ULP_PROCESOS en 
   -- función de una columna especifica
    function del_por_una_columna(
        p_Nombre_Columna in varchar2,
        p_Valor_Columna in DATE
    ) RETURN PLS_INTEGER;
     
    -- Borra registro(s) de la tabla ULP_PROCESOS en 
   -- función de una columna especifica
    function del_por_una_columna(
        p_Nombre_Columna in varchar2,
        p_Valor_Columna in VARCHAR2
    ) RETURN PLS_INTEGER;
     
end ULP_PROCESOS_CP;
/
