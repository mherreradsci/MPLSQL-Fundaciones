CREATE OR REPLACE PACKAGE BODY "TIFUND_OWN"."UTL_LOG_PROCESOS"
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
* 13-Mar-2025 mherrera Cambia nombre de columna id_sistema por sist_codigo en
*
--------------------------------------------------------------------------------
*/

AS
   vg_estado_general   ulp_procesos_tp.estado_t;

   SUBTYPE sqlerrm_t IS VARCHAR2 (300);

   FUNCTION inicia_log (
      p_proceso_maestro   IN   ulp_procesos_tp.proc_id_t DEFAULT NULL,
      p_id_sistema        IN grl_sistemas_tp.sist_codigo_t DEFAULT 'NONAME',
      p_nombre_proceso    IN   ulp_procesos_tp.nombre_proceso_t,   -- Package
      p_comentario        IN   ulp_procesos_tp.comentario_t DEFAULT NULL,
      p_usuario_cliente   IN   ulp_procesos_tp.usuario_cliente_t DEFAULT NULL,
      p_columna01         IN   ulp_procesos_tp.columna01_t DEFAULT NULL,
      p_columna02         IN   ulp_procesos_tp.columna02_t DEFAULT NULL,
      p_columna03         IN   ulp_procesos_tp.columna03_t DEFAULT NULL
   )
      RETURN ulp_procesos_tp.id_t IS
      PRAGMA AUTONOMOUS_TRANSACTION;
      -- Constantes para identificar el package/programa que se está ejecutando
      k_programa   CONSTANT fdc_defs.program_name_t := 'inicia_log';
      k_modulo     CONSTANT fdc_defs.module_name_t  := k_package || '.' || k_programa;
      -- Tipos, Constantes y Varaibles locales
      v_pid                 ulp_procesos_tp.id_t;
      v_sqlerrm             sqlerrm_t;
   BEGIN
      vg_estado_general := k_espr_abierto;
      v_pid := ulp_procesos_sec.nextval;
      ulp_procesos_cp.ins (p_id                      => v_pid,
                           p_proc_id                 => p_proceso_maestro,
                           p_sist_codigo             => p_id_sistema,
                           p_nombre_proceso          => p_nombre_proceso,
                           p_fecha_inicio            => SYSDATE,
                           p_comentario              => p_comentario,
                           p_estado                  => k_espr_abierto,
                           p_usuario_cliente         => p_usuario_cliente,
                           p_columna01               => p_columna01,
                           p_columna02               => p_columna02,
                           p_columna03               => p_columna03
                          );
      COMMIT;
      RETURN v_pid;
      DBMS_OUTPUT.put_line ('inicia_log' || 'FIN');
   exception
        when others then
            raise_application_error(
                -20200,
                dbms_utility.format_error_backtrace
                || 'FESTACK:'
                || chr(10)
                || dbms_utility.format_error_stack
            );

   END inicia_log;

   PROCEDURE agrega_mensaje (
      p_id              IN   ulp_procesos_tp.id_t,
      p_tipo_mensaje    IN   ulp_det_procesos_tp.tipo_mensaje_t DEFAULT k_msgtyp_inf,
      p_nombre_modulo   IN   ulp_det_procesos_tp.nombre_modulo_t,
      p_mensaje         IN   ulp_det_procesos_tp.mensaje_t,
      p_columna01       IN   ulp_procesos_tp.columna01_t DEFAULT NULL,
      p_columna02       IN   ulp_procesos_tp.columna02_t DEFAULT NULL,
      p_columna03       IN   ulp_procesos_tp.columna03_t DEFAULT NULL
   ) IS
      PRAGMA AUTONOMOUS_TRANSACTION;
      k_programa   CONSTANT fdc_defs.program_name_t         := 'agrega_mensaje';
      k_modulo     CONSTANT fdc_defs.module_name_t          := k_package || '.' || k_programa;
      -- Tipos, Constantes y Varaibles locales
      v_secuencia           ulp_det_procesos_tp.secuencia_t;
      v_sqlerrm             sqlerrm_t;
   BEGIN

      IF p_tipo_mensaje = k_msgtyp_err AND vg_estado_general <> k_espr_error THEN
         vg_estado_general := k_espr_error;
         ulp_procesos_cp.upd_proc_pk (p_id => p_id, p_estado => k_espr_error); --, p_ignore_valores_nulos => TRUE);
      END IF;

      v_secuencia := ulp_det_procesos_xp.maxima_secuencia (p_id) + 1;
      ulp_det_procesos_cp.ins (p_proc_id              => p_id,
                               p_secuencia            => v_secuencia,
                               p_nombre_modulo        => p_nombre_modulo,
                               p_tipo_mensaje         => p_tipo_mensaje,
                               p_mensaje              => p_mensaje,
                               p_usuario_cliente      => NULL,
                               p_columna01            => p_columna01,
                               p_columna02            => p_columna02,
                               p_columna03            => p_columna03
                              );
      COMMIT;

   EXCEPTION
      WHEN OTHERS THEN
         v_sqlerrm := SQLERRM;
         utl_error.informa (p_programa => k_modulo, p_mensaje => v_sqlerrm, p_rollback => TRUE, p_raise => FALSE);
         RAISE;
   END agrega_mensaje;

   PROCEDURE finaliza_log (
      p_id   IN   ulp_procesos_tp.id_t
   ) IS
      PRAGMA AUTONOMOUS_TRANSACTION;
      k_programa   CONSTANT fdc_defs.program_name_t  := 'finaliza_log';
      k_modulo     CONSTANT fdc_defs.module_name_t   := k_package || '.' || k_programa;
      -- Tipos, Constantes y Varaibles locales
      v_estado              ulp_procesos_tp.estado_t;
      v_sqlerrm             sqlerrm_t;
   BEGIN

      IF vg_estado_general = k_espr_abierto THEN
         v_estado := k_espr_cerrado_normal;
      ELSIF vg_estado_general = k_espr_error THEN
         v_estado := k_espr_cerrado_cerror;
      END IF;

      ulp_procesos_cp.upd_proc_pk (p_id                        => p_id,
                                   p_estado                    => v_estado,
                                   p_fecha_termino             => SYSDATE
                                  );
      COMMIT;
   EXCEPTION
      WHEN OTHERS THEN
         v_sqlerrm := SQLERRM;
         utl_error.informa (p_programa => k_modulo, p_mensaje => v_sqlerrm, p_rollback => TRUE, p_raise => FALSE);
         RAISE;
   END finaliza_log;
END utl_log_procesos;
/
