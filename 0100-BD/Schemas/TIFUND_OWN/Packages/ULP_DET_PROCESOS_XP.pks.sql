CREATE OR REPLACE PACKAGE "TIFUND_OWN"."ULP_DET_PROCESOS_XP" IS
/*
Proyecto: APIs de tablas para Utilitarios generales
Objetivo: Definicion de extensiones no entregadas por el generador de código

Historia    Quien    Descripción
----------- -------- -------------------------------------------------------------
18-nov-2004 mherrert Creación
*/
   k_package   CONSTANT VARCHAR2 (30) := UPPER ('ULP_DET_PROCESOS_XP');

   FUNCTION maxima_secuencia (
      p_proc_id   ulp_det_procesos_tp.proc_id_t
   )
      RETURN ulp_det_procesos_tp.secuencia_t;
END ulp_det_procesos_xp;
/
