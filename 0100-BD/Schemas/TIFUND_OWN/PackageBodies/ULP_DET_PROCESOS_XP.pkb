CREATE OR REPLACE PACKAGE BODY "TIFUND_OWN"."ULP_DET_PROCESOS_XP" IS
/*
Proyecto: APIs de tablas para Utilitarios generales
Objetivo: Definicion de extensiones no entregadas por el generador de código

Historia    Quien    Descripción
----------- -------- -------------------------------------------------------------
18-nov-2004 mherrert Creación
*/
   FUNCTION maxima_secuencia (
      p_proc_id   ulp_det_procesos_tp.proc_id_t
   )
      RETURN ulp_det_procesos_tp.secuencia_t IS
      -- Constantes para identificar el package/programa que se está ejecutando
      k_programa   CONSTANT VARCHAR2 (30)                   := UPPER ('maxima_secuencia');
      k_modulo     CONSTANT VARCHAR2 (61)                   := SUBSTR (k_package || '.' || k_programa, 1, 61);
      -- Variables
      v_secuencia           ulp_det_procesos_tp.secuencia_t;
   BEGIN
      SELECT NVL (MAX (secuencia), 0)
      INTO   v_secuencia
      FROM   ulp_det_procesos
      WHERE  proc_id = p_proc_id;

      RETURN v_secuencia;
   EXCEPTION
      WHEN OTHERS THEN
         utl_error.informa (k_modulo);
   END maxima_secuencia;
END ulp_det_procesos_xp;
/
