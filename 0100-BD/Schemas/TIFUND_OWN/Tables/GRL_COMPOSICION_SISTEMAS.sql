CREATE TABLE "TIFUND_OWN"."GRL_COMPOSICION_SISTEMAS"
(	"SIST_CODIGO" VARCHAR2(20) NOT NULL ENABLE,
    "SIST_CODIGO_SUBSISTEMA" VARCHAR2(20) NOT NULL ENABLE,
    "NOMBRE_PROYECTO" VARCHAR2(240) NOT NULL ENABLE,
    "AUD_CREADO_EL" DATE DEFAULT sysdate NOT NULL ENABLE,
    "AUD_CREADO_POR" VARCHAR2(30) DEFAULT user NOT NULL ENABLE,
    "AUD_MODIFICADO_EL" DATE,
    "AUD_MODIFICADO_POR" VARCHAR2(30)
) SEGMENT CREATION IMMEDIATE
PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
TABLESPACE "USERS"
/
ALTER TABLE "TIFUND_OWN"."GRL_COMPOSICION_SISTEMAS" ADD CONSTRAINT "COSI_PK" PRIMARY KEY ("SIST_CODIGO", "SIST_CODIGO_SUBSISTEMA")
USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
TABLESPACE "INDX"  ENABLE
/

-- * ***************************************************************************
-- * Comments
-- * ***************************************************************************
COMMENT ON COLUMN "TIFUND_OWN"."GRL_COMPOSICION_SISTEMAS"."SIST_CODIGO" IS 'Identificador / Nombre corto del sistema'
/
COMMENT ON COLUMN "TIFUND_OWN"."GRL_COMPOSICION_SISTEMAS"."SIST_CODIGO_SUBSISTEMA" IS 'Identificador / Nombre corto del subsistema'
/
COMMENT ON COLUMN "TIFUND_OWN"."GRL_COMPOSICION_SISTEMAS"."NOMBRE_PROYECTO" IS 'Nombre del Proyecto.'
/
COMMENT ON COLUMN "TIFUND_OWN"."GRL_COMPOSICION_SISTEMAS"."AUD_CREADO_EL" IS 'Fecha y hora en la cual fue creado el registro.'
/
COMMENT ON COLUMN "TIFUND_OWN"."GRL_COMPOSICION_SISTEMAS"."AUD_CREADO_POR" IS 'Usuario de bd que creó el registro.'
/
COMMENT ON COLUMN "TIFUND_OWN"."GRL_COMPOSICION_SISTEMAS"."AUD_MODIFICADO_EL" IS 'Fecha y hora en la cual fue modificado el registro.'
/
COMMENT ON COLUMN "TIFUND_OWN"."GRL_COMPOSICION_SISTEMAS"."AUD_MODIFICADO_POR" IS 'Usuario de bd que cambió/actualizó el registro.'
/
--    7 Comments found.
-- * ***************************************************************************
-- * Non constraint Index for: TIFUND_OWN.GRL_COMPOSICION_SISTEMAS
-- * ***************************************************************************
--    0 Non Constraint indexes found.
-- * ***************************************************************************
-- * Ref Constraints for: TIFUND_OWN.GRL_COMPOSICION_SISTEMAS
-- * ***************************************************************************
ALTER TABLE "TIFUND_OWN"."GRL_COMPOSICION_SISTEMAS" ADD CONSTRAINT "COSI_SIST_COMPUESTO_POR_FK" FOREIGN KEY ("SIST_CODIGO")
      REFERENCES "TIFUND_OWN"."GRL_SISTEMAS" ("SIST_CODIGO") ENABLE
/
ALTER TABLE "TIFUND_OWN"."GRL_COMPOSICION_SISTEMAS" ADD CONSTRAINT "COSI_SIST_COMPUESTO_DE_FK" FOREIGN KEY ("SIST_CODIGO_SUBSISTEMA")
      REFERENCES "TIFUND_OWN"."GRL_SISTEMAS" ("SIST_CODIGO") ENABLE
/
--    2 Reference constraints found.
-- * ***************************************************************************
-- * Sequences: TIFUND_OWN.GRL_COMPOSICION_SISTEMAS
-- * ***************************************************************************
--    0 Sequences found.
-- * ***************************************************************************
-- * Triggers for: TIFUND_OWN.GRL_COMPOSICION_SISTEMAS
-- * ***************************************************************************
CREATE OR REPLACE TRIGGER "TIFUND_OWN"."COSI_BI_TRG" 
    BEFORE INSERT
    ON tifund_own.grl_composicion_sistemas
    FOR EACH ROW
BEGIN
    :new.aud_creado_el := SYSDATE;
    :new.aud_creado_por := USER;
END;
/
ALTER TRIGGER "TIFUND_OWN"."COSI_BI_TRG" ENABLE
/
CREATE OR REPLACE TRIGGER "TIFUND_OWN"."COSI_BU_TRG" 
    BEFORE UPDATE
    ON tifund_own.grl_composicion_sistemas
    FOR EACH ROW
BEGIN
    :new.aud_modificado_el := SYSDATE;
    :new.aud_modificado_por := USER;
END cosi_bu_trg;
/
ALTER TRIGGER "TIFUND_OWN"."COSI_BU_TRG" ENABLE
/
--    2 Triggers found.
-- * ***************************************************************************
-- * Public Synonyms
-- * ***************************************************************************
--    0 Public synonyms for GRL_COMPOSICION_SISTEMAS.
-- * ***************************************************************************
-- * Grants
-- * ***************************************************************************
GRANT DELETE, INSERT, SELECT, UPDATE ON "TIFUND_OWN"."GRL_COMPOSICION_SISTEMAS" TO "TIFUND_DEV_ROL";
--    1 lines of grants found for GRL_COMPOSICION_SISTEMAS.

-- Successful completion for GRL_COMPOSICION_SISTEMAS.
