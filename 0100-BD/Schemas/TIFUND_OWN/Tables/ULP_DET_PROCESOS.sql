CREATE TABLE "TIFUND_OWN"."ULP_DET_PROCESOS"
(	"PROC_ID" NUMBER(10,0) NOT NULL ENABLE,
    "SECUENCIA" NUMBER(8,0) NOT NULL ENABLE,
    "NOMBRE_MODULO" VARCHAR2(65) NOT NULL ENABLE,
    "TIPO_MENSAJE" VARCHAR2(3) NOT NULL ENABLE,
    "MENSAJE" VARCHAR2(4000),
    "USUARIO_CLIENTE" VARCHAR2(30),
    "COLUMNA01" VARCHAR2(256),
    "COLUMNA02" VARCHAR2(256),
    "COLUMNA03" VARCHAR2(256),
    "AUD_CREADO_EL" DATE DEFAULT sysdate NOT NULL ENABLE,
    "AUD_CREADO_POR" VARCHAR2(30) DEFAULT user NOT NULL ENABLE,
    "AUD_MODIFICADO_EL" DATE,
    "AUD_MODIFICADO_POR" VARCHAR2(30)
) SEGMENT CREATION IMMEDIATE
PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
TABLESPACE "USERS"
/
ALTER TABLE "TIFUND_OWN"."ULP_DET_PROCESOS" ADD CONSTRAINT "AVCON_1102995995_TIPO__000" CHECK ( tipo_mensaje IN ( 'ADV', 'ERR', 'FIN', 'INF', 'INI' ) ) ENABLE
/
ALTER TABLE "TIFUND_OWN"."ULP_DET_PROCESOS" ADD CONSTRAINT "DEPR_PK" PRIMARY KEY ("PROC_ID", "SECUENCIA")
USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
TABLESPACE "INDX"  ENABLE
/

-- * ***************************************************************************
-- * Comments
-- * ***************************************************************************
COMMENT ON COLUMN "TIFUND_OWN"."ULP_DET_PROCESOS"."PROC_ID" IS 'Secuencia identificadora del proceso'
/
COMMENT ON COLUMN "TIFUND_OWN"."ULP_DET_PROCESOS"."SECUENCIA" IS 'Secuencia del tetalle del log de procesos'
/
COMMENT ON COLUMN "TIFUND_OWN"."ULP_DET_PROCESOS"."NOMBRE_MODULO" IS 'Nombre del programa, se recomienda la forma (package.programa)'
/
COMMENT ON COLUMN "TIFUND_OWN"."ULP_DET_PROCESOS"."TIPO_MENSAJE" IS 'Tipo de mensaje'
/
COMMENT ON COLUMN "TIFUND_OWN"."ULP_DET_PROCESOS"."MENSAJE" IS 'Texto del mensaje'
/
COMMENT ON COLUMN "TIFUND_OWN"."ULP_DET_PROCESOS"."USUARIO_CLIENTE" IS 'Nombre de Usuario conectado en el servidor de aplicaciones'
/
COMMENT ON COLUMN "TIFUND_OWN"."ULP_DET_PROCESOS"."COLUMNA01" IS 'Columna genérica 01 para representar otros valores'
/
COMMENT ON COLUMN "TIFUND_OWN"."ULP_DET_PROCESOS"."COLUMNA02" IS 'Columna genérica 02 para representar otros valores'
/
COMMENT ON COLUMN "TIFUND_OWN"."ULP_DET_PROCESOS"."COLUMNA03" IS 'Columna genérica 03 para representar otros valores'
/
COMMENT ON COLUMN "TIFUND_OWN"."ULP_DET_PROCESOS"."AUD_CREADO_EL" IS 'Fecha y hora en la cual fue creado el registro.'
/
COMMENT ON COLUMN "TIFUND_OWN"."ULP_DET_PROCESOS"."AUD_CREADO_POR" IS 'Usuario de bd que creó el registro.'
/
COMMENT ON COLUMN "TIFUND_OWN"."ULP_DET_PROCESOS"."AUD_MODIFICADO_EL" IS 'Fecha y hora en la cual fue modificado el registro.'
/
COMMENT ON COLUMN "TIFUND_OWN"."ULP_DET_PROCESOS"."AUD_MODIFICADO_POR" IS 'Usuario de bd que cambió/actualizó el registro.'
/
COMMENT ON TABLE "TIFUND_OWN"."ULP_DET_PROCESOS"  IS 'Bitacora para detalle  de procesos'
/
--   14 Comments found.
-- * ***************************************************************************
-- * Non constraint Index for: TIFUND_OWN.ULP_DET_PROCESOS
-- * ***************************************************************************
--    0 Non Constraint indexes found.
-- * ***************************************************************************
-- * Ref Constraints for: TIFUND_OWN.ULP_DET_PROCESOS
-- * ***************************************************************************
ALTER TABLE "TIFUND_OWN"."ULP_DET_PROCESOS" ADD CONSTRAINT "DEPR_PROC_FK" FOREIGN KEY ("PROC_ID")
      REFERENCES "TIFUND_OWN"."ULP_PROCESOS" ("ID") ENABLE
/
--    1 Reference constraints found.
-- * ***************************************************************************
-- * Sequences: TIFUND_OWN.ULP_DET_PROCESOS
-- * ***************************************************************************
--    0 Sequences found.
-- * ***************************************************************************
-- * Triggers for: TIFUND_OWN.ULP_DET_PROCESOS
-- * ***************************************************************************
CREATE OR REPLACE TRIGGER "TIFUND_OWN"."DEPR_BI_TRG" 
    BEFORE INSERT
    ON tifund_own.ulp_det_procesos
    FOR EACH ROW
BEGIN
    :new.aud_creado_el := SYSDATE;
    :new.aud_creado_por := USER;
END;
/
ALTER TRIGGER "TIFUND_OWN"."DEPR_BI_TRG" ENABLE
/
CREATE OR REPLACE TRIGGER "TIFUND_OWN"."DEPR_BU_TRG" 
    -- Fecha de creación: 15-aug-2024 22:16:41
    BEFORE UPDATE
    ON TIFUND_OWN.ULP_DET_PROCESOS
    FOR EACH ROW
BEGIN
    :NEW.AUD_MODIFICADO_EL := SYSDATE;
    :NEW.AUD_MODIFICADO_POR := USER;
END DEPR_BU_TRG;
/
ALTER TRIGGER "TIFUND_OWN"."DEPR_BU_TRG" ENABLE
/
--    2 Triggers found.
-- * ***************************************************************************
-- * Public Synonyms
-- * ***************************************************************************
CREATE OR REPLACE PUBLIC SYNONYM "ULP_DET_PROCESOS" FOR "TIFUND_OWN"."ULP_DET_PROCESOS"
/
--    1 Public synonyms for ULP_DET_PROCESOS.
-- * ***************************************************************************
-- * Grants
-- * ***************************************************************************
GRANT DELETE, INSERT, SELECT, UPDATE ON "TIFUND_OWN"."ULP_DET_PROCESOS" TO "TIFUND_DEV_ROL";
--    1 lines of grants found for ULP_DET_PROCESOS.

-- Successful completion for ULP_DET_PROCESOS.
