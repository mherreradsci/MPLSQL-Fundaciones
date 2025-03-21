CREATE TABLE "TIFUND_OWN"."UER_ERRORES"
(	"ERRO_ID" NUMBER(10,0) NOT NULL ENABLE,
    "PROGRAMA" VARCHAR2(120) NOT NULL ENABLE,
    "MENSAJE" VARCHAR2(4000),
    "AUD_CREADO_POR" VARCHAR2(45) DEFAULT USER NOT NULL ENABLE,
    "AUD_CREADO_EN" TIMESTAMP (6) DEFAULT SYSTIMESTAMP NOT NULL ENABLE,
    "AUD_MODIFICADO_POR" VARCHAR2(45),
    "AUD_MODIFICADO_EN" TIMESTAMP (6),
    "LOPR_ID" NUMBER(10,0)
) SEGMENT CREATION IMMEDIATE
PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
TABLESPACE "USERS"
/
ALTER TABLE "TIFUND_OWN"."UER_ERRORES" ADD CONSTRAINT "ERRO_PK" PRIMARY KEY ("ERRO_ID")
USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
TABLESPACE "INDX"  ENABLE
/

-- * ***************************************************************************
-- * Comments
-- * ***************************************************************************
COMMENT ON COLUMN "TIFUND_OWN"."UER_ERRORES"."ERRO_ID" IS 'Id de Valores Generales'
/
COMMENT ON COLUMN "TIFUND_OWN"."UER_ERRORES"."PROGRAMA" IS 'Programa ejecutado'
/
COMMENT ON COLUMN "TIFUND_OWN"."UER_ERRORES"."MENSAJE" IS 'Mensaje de error'
/
COMMENT ON COLUMN "TIFUND_OWN"."UER_ERRORES"."AUD_CREADO_POR" IS 'Usuario que creo el registro'
/
COMMENT ON COLUMN "TIFUND_OWN"."UER_ERRORES"."AUD_CREADO_EN" IS 'Fecha y Hora de la creación del registro'
/
COMMENT ON COLUMN "TIFUND_OWN"."UER_ERRORES"."AUD_MODIFICADO_POR" IS 'Usuario que modificó por última vez el registro'
/
COMMENT ON COLUMN "TIFUND_OWN"."UER_ERRORES"."AUD_MODIFICADO_EN" IS 'Fecha y Hora de la última modificación del registro'
/
COMMENT ON COLUMN "TIFUND_OWN"."UER_ERRORES"."LOPR_ID" IS 'Id del log de procesos'
/
COMMENT ON TABLE "TIFUND_OWN"."UER_ERRORES"  IS 'Registra los errores, generalmente, capturados por el bloque "exception others". Se utiliza transversalmente cuando se adhiere al framework de "Desarrollo de Aplicaciones Empresariales PL/SQL"'
/
--    9 Comments found.
-- * ***************************************************************************
-- * Non constraint Index for: TIFUND_OWN.UER_ERRORES
-- * ***************************************************************************
CREATE INDEX "TIFUND_OWN"."ERRO_IX01" ON "TIFUND_OWN"."UER_ERRORES" ("PROGRAMA") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "INDX" 
/
--    1 Non Constraint indexes found.
-- * ***************************************************************************
-- * Ref Constraints for: TIFUND_OWN.UER_ERRORES
-- * ***************************************************************************
--    0 Reference constraints found.
-- * ***************************************************************************
-- * Sequences: TIFUND_OWN.UER_ERRORES
-- * ***************************************************************************
CREATE SEQUENCE  "TIFUND_OWN"."UER_ERRORES_SEC"  MINVALUE 1 MAXVALUE 999999999999999999999999999 INCREMENT BY 1 START WITH 159 NOCACHE  NOORDER  NOCYCLE 
/

--    1 Sequences found.
-- * ***************************************************************************
-- * Triggers for: TIFUND_OWN.UER_ERRORES
-- * ***************************************************************************
CREATE OR REPLACE TRIGGER "TIFUND_OWN"."ERRO_BI_TRG" 
--DECLARE
--    v_proxy_user   uer_errores.aud_creado_por%TYPE;
    BEFORE INSERT
    ON tifund_own.uer_errores
    FOR EACH ROW
BEGIN
    :new.erro_id := uer_errores_sec.NEXTVAL;
    --:new.aud_creado_en := SYSTIMESTAMP;
    --v_proxy_user := SYS_CONTEXT ('USERENV', 'PROXY_USER');

    :new.aud_creado_por := NVL(SYS_CONTEXT ('USERENV', 'PROXY_USER'), USER);

    --    IF v_proxy_user IS NOT NULL THEN
    --        :new.aud_creado_por := v_proxy_user;
    --    ELSE
    --        :new.aud_creado_por := USER;
    --    END IF;
END;
/
ALTER TRIGGER "TIFUND_OWN"."ERRO_BI_TRG" ENABLE
/
CREATE OR REPLACE TRIGGER "TIFUND_OWN"."ERRO_BU_TRG" 
--DECLARE
--    v_proxy_user   uer_errores.aud_creado_por%TYPE;
    BEFORE UPDATE
    ON tifund_own.uer_errores
    FOR EACH ROW
BEGIN
    :new.aud_modificado_en := SYSTIMESTAMP;
    --v_proxy_user := SYS_CONTEXT ('USERENV', 'PROXY_USER');
    :new.aud_modificado_por := NVL(SYS_CONTEXT ('USERENV', 'PROXY_USER'), USER);
    --    IF v_proxy_user IS NOT NULL THEN
    --        :new.aud_modificado_por := v_proxy_user;
    --    ELSE
    --        :new.aud_modificado_por := USER;
    --    END IF;
END;
/
ALTER TRIGGER "TIFUND_OWN"."ERRO_BU_TRG" ENABLE
/
--    2 Triggers found.
-- * ***************************************************************************
-- * Public Synonyms
-- * ***************************************************************************
CREATE OR REPLACE PUBLIC SYNONYM "UER_ERRORES" FOR "TIFUND_OWN"."UER_ERRORES"
/
--    1 Public synonyms for UER_ERRORES.
-- * ***************************************************************************
-- * Grants
-- * ***************************************************************************
GRANT DELETE, INSERT, SELECT, UPDATE ON "TIFUND_OWN"."UER_ERRORES" TO "TIFUND_DEV_ROL";
--    1 lines of grants found for UER_ERRORES.

-- Successful completion for UER_ERRORES.
