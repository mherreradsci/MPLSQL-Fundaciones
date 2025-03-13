CREATE OR REPLACE PACKAGE "TIFUND_OWN"."UTL_LOG_PROCESOS"
/*
* Package: utl_log_procesos
* Descripción: Programas para Log de Procesos
*
* Historia
* Fecha       Quien    Observación
* ----------- -------- ---------------------------------------------------------
* 04-Oct-2004 mherrert Creación
* 17-Dic-2004 mherrera Función: inicia_log: Se agregan los parámetros
*                      p_id_sistema, p_id_subsistema y p_usuario_cliente
* 20-Oct-2024 mherrera Se eleimina p_id_subsistema debido a cambio del modelo.
*
--------------------------------------------------------------------------------
*/

AS
    k_package               CONSTANT fdc_defs.package_name_t := 'utl_log_procesos';
    -- Constantes
    k_largo_max_msg         CONSTANT NUMBER (3) := 300;

    SUBTYPE estado_proceso_t IS ulp_procesos_tp.estado_t;

    k_espr_abierto          CONSTANT estado_proceso_t := 'AB';
    k_espr_error            CONSTANT estado_proceso_t := 'ER';
    k_espr_cerrado_cerror   CONSTANT estado_proceso_t := 'CE';
    k_espr_cerrado_normal   CONSTANT estado_proceso_t := 'OK';

    SUBTYPE tipo_mensaje_t IS ulp_det_procesos_tp.tipo_mensaje_t;

    k_msgtyp_ini            CONSTANT tipo_mensaje_t := 'INI'; -- Inicio de proceso
    k_msgtyp_fin            CONSTANT tipo_mensaje_t := 'FIN'; -- termino de proceso
    k_msgtyp_err            CONSTANT tipo_mensaje_t := 'ERR'; -- Error de proceso
    k_msgtyp_adv            CONSTANT tipo_mensaje_t := 'ADV';   -- Advertencia
    k_msgtyp_inf            CONSTANT tipo_mensaje_t := 'INF';   -- Información

    /*---------------------------------------------------------------------------
    Programa: Inicia_Log
    Descripción:
       Inicia el Log de Procesos, los parámetros obligatorios son:
          p_nombre_proceso
       y debe corresponder al k_package o nombre del package
       retorna el id del proceso (secuencia)
    ---------------------------------------------------------------------------*/
    FUNCTION inicia_log (
        p_proceso_maestro   IN ulp_procesos_tp.proc_id_t DEFAULT NULL,
        p_id_sistema        IN grl_sistemas_tp.sist_codigo_t DEFAULT 'NONAME',
        p_nombre_proceso    IN ulp_procesos_tp.nombre_proceso_t,    -- Package
        p_comentario        IN ulp_procesos_tp.comentario_t DEFAULT NULL,
        p_usuario_cliente   IN ulp_procesos_tp.usuario_cliente_t DEFAULT NULL,
        p_columna01         IN ulp_procesos_tp.columna01_t DEFAULT NULL,
        p_columna02         IN ulp_procesos_tp.columna02_t DEFAULT NULL,
        p_columna03         IN ulp_procesos_tp.columna03_t DEFAULT NULL)
        RETURN ulp_procesos_tp.id_t;

    /*---------------------------------------------------------------------------
    Programa: Agrega_mensaje
    Descripción:
       Agrega un mensaje al Log de Procesos identificado por p_id
    ---------------------------------------------------------------------------*/
    PROCEDURE agrega_mensaje (
        p_id              IN ulp_procesos_tp.id_t,
        p_tipo_mensaje    IN ulp_det_procesos_tp.tipo_mensaje_t DEFAULT k_msgtyp_inf,
        p_nombre_modulo   IN ulp_det_procesos_tp.nombre_modulo_t,
        p_mensaje         IN ulp_det_procesos_tp.mensaje_t,
        p_columna01       IN ulp_procesos_tp.columna01_t DEFAULT NULL,
        p_columna02       IN ulp_procesos_tp.columna02_t DEFAULT NULL,
        p_columna03       IN ulp_procesos_tp.columna03_t DEFAULT NULL);

    /*---------------------------------------------------------------------------
    Programa: Finaliza_log
    Descripción:
       Finaliza el Log de Procesosidentificado por p_id
    ---------------------------------------------------------------------------*/
    PROCEDURE finaliza_log (p_id IN ulp_procesos_tp.id_t);
END utl_log_procesos;
/
