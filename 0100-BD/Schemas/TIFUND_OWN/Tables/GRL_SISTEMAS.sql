CREATE TABLE "TIFUND_OWN"."GRL_SISTEMAS"
(	"SIST_CODIGO" VARCHAR2(20) NOT NULL ENABLE,
    "NOMBRE" VARCHAR2(60) NOT NULL ENABLE,
    "DESCRIPCION" VARCHAR2(600),
    "NIVEL_SISTEMA" NUMBER(3,0) NOT NULL ENABLE,
    "AUD_CREADO_EL" DATE DEFAULT SYSDATE NOT NULL ENABLE,
    "AUD_CREADO_POR" VARCHAR2(30) DEFAULT USER NOT NULL ENABLE,
    "AUD_MODIFICADO_EL" DATE,
    "AUD_MODIFICADO_POR" VARCHAR2(30)
) SEGMENT CREATION IMMEDIATE
PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
TABLESPACE "USERS"
/
ALTER TABLE "TIFUND_OWN"."GRL_SISTEMAS" ADD CONSTRAINT "SIST_PK" PRIMARY KEY ("SIST_CODIGO")
USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
TABLESPACE "INDX"  ENABLE
/

-- * ***************************************************************************
-- * Comments
-- * ***************************************************************************
COMMENT ON COLUMN "TIFUND_OWN"."GRL_SISTEMAS"."SIST_CODIGO" IS 'Identificador / Nombre corto del sistema.'
/
COMMENT ON COLUMN "TIFUND_OWN"."GRL_SISTEMAS"."NOMBRE" IS 'Nombre del sistema.'
/
COMMENT ON COLUMN "TIFUND_OWN"."GRL_SISTEMAS"."DESCRIPCION" IS 'Descripción breve del sistema.'
/
COMMENT ON COLUMN "TIFUND_OWN"."GRL_SISTEMAS"."NIVEL_SISTEMA" IS 'Indica el nivel en el árbol de jerarquía de los sistemas/subsistemas.'
/
COMMENT ON COLUMN "TIFUND_OWN"."GRL_SISTEMAS"."AUD_CREADO_EL" IS 'Fecha y hora en la cual fue creado el registro.'
/
COMMENT ON COLUMN "TIFUND_OWN"."GRL_SISTEMAS"."AUD_CREADO_POR" IS 'Usuario de bd que creó el registro.'
/
COMMENT ON COLUMN "TIFUND_OWN"."GRL_SISTEMAS"."AUD_MODIFICADO_EL" IS 'Fecha y hora en la cual fue modificado el registro.'
/
COMMENT ON COLUMN "TIFUND_OWN"."GRL_SISTEMAS"."AUD_MODIFICADO_POR" IS 'Usuario de bd que cambió/actualizó el registro.'
/
--    8 Comments found.
-- * ***************************************************************************
-- * Non constraint Index for: TIFUND_OWN.GRL_SISTEMAS
-- * ***************************************************************************
--    0 Non Constraint indexes found.
-- * ***************************************************************************
-- * Ref Constraints for: TIFUND_OWN.GRL_SISTEMAS
-- * ***************************************************************************
--    0 Reference constraints found.
-- * ***************************************************************************
-- * Sequences: TIFUND_OWN.GRL_SISTEMAS
-- * ***************************************************************************
--    0 Sequences found.
-- * ***************************************************************************
-- * Triggers for: TIFUND_OWN.GRL_SISTEMAS
-- * ***************************************************************************
CREATE OR REPLACE TRIGGER "TIFUND_OWN"."SIST_BI_TRG" 
    BEFORE INSERT
    ON tifund_own.grl_sistemas
    FOR EACH ROW
BEGIN
    :new.aud_creado_el := SYSDATE;
    :new.aud_creado_por := USER;
END;
/
ALTER TRIGGER "TIFUND_OWN"."SIST_BI_TRG" ENABLE
/
CREATE OR REPLACE TRIGGER "TIFUND_OWN"."SIST_BU_TRG" 
    BEFORE UPDATE
    ON tifund_own.grl_sistemas
    FOR EACH ROW
BEGIN
    :new.aud_modificado_el := SYSDATE;
    :new.aud_modificado_por := USER;
END sist_bu_trg;
/
ALTER TRIGGER "TIFUND_OWN"."SIST_BU_TRG" ENABLE
/
--    2 Triggers found.
-- * ***************************************************************************
-- * Public Synonyms
-- * ***************************************************************************
CREATE OR REPLACE PUBLIC SYNONYM "GRL_SISTEMAS" FOR "TIFUND_OWN"."GRL_SISTEMAS"
/
--    1 Public synonyms for GRL_SISTEMAS.
-- * ***************************************************************************
-- * Grants
-- * ***************************************************************************
GRANT DELETE, INSERT, SELECT, UPDATE ON "TIFUND_OWN"."GRL_SISTEMAS" TO "TIFUND_DEV_ROL";
--    1 lines of grants found for GRL_SISTEMAS.

-- Successful completion for GRL_SISTEMAS.
