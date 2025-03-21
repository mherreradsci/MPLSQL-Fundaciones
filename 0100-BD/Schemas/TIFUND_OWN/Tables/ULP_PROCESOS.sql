CREATE TABLE "TIFUND_OWN"."ULP_PROCESOS"
(	"ID" NUMBER(10,0) NOT NULL ENABLE,
    "PROC_ID" NUMBER(10,0),
    "SIST_CODIGO" VARCHAR2(20) NOT NULL ENABLE,
    "NOMBRE_PROCESO" VARCHAR2(30) NOT NULL ENABLE,
    "FECHA_INICIO" DATE DEFAULT sysdate NOT NULL ENABLE,
    "FECHA_TERMINO" DATE,
    "COMENTARIO" VARCHAR2(300),
    "ESTADO" VARCHAR2(2) DEFAULT 'AB' NOT NULL ENABLE,
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
ALTER TABLE "TIFUND_OWN"."ULP_PROCESOS" ADD CONSTRAINT "AVCON_1102995995_ESTAD_000" CHECK ( estado IN ( 'AB', 'CE', 'ER', 'OK' ) ) ENABLE
/
ALTER TABLE "TIFUND_OWN"."ULP_PROCESOS" ADD CONSTRAINT "PROC_PK" PRIMARY KEY ("ID")
USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
TABLESPACE "INDX"  ENABLE
/

-- * ***************************************************************************
-- * Comments
-- * ***************************************************************************
COMMENT ON COLUMN "TIFUND_OWN"."ULP_PROCESOS"."ID" IS 'Secuencia que identifica un proceso'
/
COMMENT ON COLUMN "TIFUND_OWN"."ULP_PROCESOS"."PROC_ID" IS 'Indica el ID del proceso maestro'
/
COMMENT ON COLUMN "TIFUND_OWN"."ULP_PROCESOS"."SIST_CODIGO" IS 'Identificador / Nombre corto del sistema'
/
COMMENT ON COLUMN "TIFUND_OWN"."ULP_PROCESOS"."NOMBRE_PROCESO" IS 'Nombre del proceso, generalmente debe partir por el área funcional principal'
/
COMMENT ON COLUMN "TIFUND_OWN"."ULP_PROCESOS"."FECHA_INICIO" IS 'Fecha y Hora de Inicio del proceso'
/
COMMENT ON COLUMN "TIFUND_OWN"."ULP_PROCESOS"."FECHA_TERMINO" IS 'Fecha y Hora de término del proceso'
/
COMMENT ON COLUMN "TIFUND_OWN"."ULP_PROCESOS"."COMENTARIO" IS 'Cometario para el proceso'
/
COMMENT ON COLUMN "TIFUND_OWN"."ULP_PROCESOS"."ESTADO" IS 'Estado con el cual terminó el proceso'
/
COMMENT ON COLUMN "TIFUND_OWN"."ULP_PROCESOS"."USUARIO_CLIENTE" IS 'Nombre de Usuario conectado en el servidor de aplicaciones'
/
COMMENT ON COLUMN "TIFUND_OWN"."ULP_PROCESOS"."COLUMNA01" IS 'Columna 01 genérica para representar otros valores'
/
COMMENT ON COLUMN "TIFUND_OWN"."ULP_PROCESOS"."COLUMNA02" IS 'Columna genérica 02 para representar otros valores'
/
COMMENT ON COLUMN "TIFUND_OWN"."ULP_PROCESOS"."COLUMNA03" IS 'Columna genérica 03 para representar otros valores'
/
COMMENT ON COLUMN "TIFUND_OWN"."ULP_PROCESOS"."AUD_CREADO_EL" IS 'Fecha y hora en la cual fue creado el registro.'
/
COMMENT ON COLUMN "TIFUND_OWN"."ULP_PROCESOS"."AUD_CREADO_POR" IS 'Usuario de bd que creó el registro.'
/
COMMENT ON COLUMN "TIFUND_OWN"."ULP_PROCESOS"."AUD_MODIFICADO_EL" IS 'Fecha y hora en la cual fue modificado el registro.'
/
COMMENT ON COLUMN "TIFUND_OWN"."ULP_PROCESOS"."AUD_MODIFICADO_POR" IS 'Usuario de bd que cambió/actualizó el registro.'
/
COMMENT ON TABLE "TIFUND_OWN"."ULP_PROCESOS"  IS 'Tabla maestra para almacenar información de Procesos'
/
--   17 Comments found.
-- * ***************************************************************************
-- * Non constraint Index for: TIFUND_OWN.ULP_PROCESOS
-- * ***************************************************************************
CREATE INDEX "TIFUND_OWN"."PROC_IDX01" ON "TIFUND_OWN"."ULP_PROCESOS" ("NOMBRE_PROCESO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "INDX" 
/
--    1 Non Constraint indexes found.
-- * ***************************************************************************
-- * Ref Constraints for: TIFUND_OWN.ULP_PROCESOS
-- * ***************************************************************************
ALTER TABLE "TIFUND_OWN"."ULP_PROCESOS" ADD CONSTRAINT "PROC_PROC_FK" FOREIGN KEY ("PROC_ID")
      REFERENCES "TIFUND_OWN"."ULP_PROCESOS" ("ID") ENABLE
/
ALTER TABLE "TIFUND_OWN"."ULP_PROCESOS" ADD CONSTRAINT "PROC_SIST_FK" FOREIGN KEY ("SIST_CODIGO")
      REFERENCES "TIFUND_OWN"."GRL_SISTEMAS" ("SIST_CODIGO") ENABLE
/
--    2 Reference constraints found.
-- * ***************************************************************************
-- * Sequences: TIFUND_OWN.ULP_PROCESOS
-- * ***************************************************************************
CREATE SEQUENCE  "TIFUND_OWN"."ULP_PROCESOS_SEC"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 5 CACHE 20 NOORDER  NOCYCLE 
/

--    1 Sequences found.
-- * ***************************************************************************
-- * Triggers for: TIFUND_OWN.ULP_PROCESOS
-- * ***************************************************************************
CREATE OR REPLACE TRIGGER "TIFUND_OWN"."PROC_BI_TRG" 
    BEFORE INSERT
    ON tifund_own.ulp_procesos
    REFERENCING NEW AS new OLD AS old
    FOR EACH ROW
BEGIN
    IF :new.id IS NULL THEN
        :new.id := ulp_procesos_sec.NEXTVAL;
    END IF;

    :new.aud_creado_el := SYSDATE;
    :new.aud_creado_por := USER;
END;
/
ALTER TRIGGER "TIFUND_OWN"."PROC_BI_TRG" ENABLE
/
CREATE OR REPLACE TRIGGER "TIFUND_OWN"."PROC_BU_TRG" 
    -- Fecha de creación: 15-aug-2024 22:16:41
    BEFORE UPDATE
    ON TIFUND_OWN.ULP_PROCESOS
    FOR EACH ROW
BEGIN
    :NEW.AUD_MODIFICADO_EL := SYSDATE;
    :NEW.AUD_MODIFICADO_POR := USER;
END PROC_BU_TRG;
/
ALTER TRIGGER "TIFUND_OWN"."PROC_BU_TRG" ENABLE
/
--    2 Triggers found.
-- * ***************************************************************************
-- * Public Synonyms
-- * ***************************************************************************
--    0 Public synonyms for ULP_PROCESOS.
-- * ***************************************************************************
-- * Grants
-- * ***************************************************************************
GRANT DELETE, INSERT, SELECT, UPDATE ON "TIFUND_OWN"."ULP_PROCESOS" TO "TIFUND_DEV_ROL";
--    1 lines of grants found for ULP_PROCESOS.

-- Successful completion for ULP_PROCESOS.
