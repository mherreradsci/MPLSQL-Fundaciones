/*
* Create Schema Script 
*  Database Version          : 19.0.0.0.0 
*  Database Compatible Level : 19.0.0 
*  Script Compatible Level   : 11.2 
*  DB Connect String         : DOCKER-19C-PDB1-TARGET 
*  Schema                    : TIFUND_OWN 
*  Script Created by         : SYSTEM 
*  Script Created at         : 07/26/2024 00:23:23 
*/

-- OBSERVACIÓN: Este Script sirve para la Instalacion inicial, no tiene
-- grants a terceros. Los GRANTS a terceros se debe incluir en un set 
-- de scripts aparte, generalmente en el directorio GrantsToThirdParties, 
-- para mantener un correcto Control de Configuración de Fuentes (GIT)

---------------------------------- IMPORTANTE ----------------------------------
---------------------------------- IMPORTANTE ----------------------------------
---------------------------------- IMPORTANTE ----------------------------------
-- Para ejecutar desde MINGW64 en Windows se debe asignar la variable de 
-- ambiente NLS_LANG utilizando español y UTF8 o AL32UTF8, por ejemplo: 
--  $ NLS_LANG=SPANISH_SPAIN.UTF8 sqlplus system@centos-ora11g @TIFUND_OWN_Build_All.sql


col C_SERVICE_NAME new_value V_SERVICE_NAME
col C_DT new_value V_DT

select  UPPER(sys_context('USERENV','SERVICE_NAME')) AS C_SERVICE_NAME,
        TO_CHAR(SYSDATE, 'yyyymmdd_hh24miss') AS C_DT
from dual;

spool ./TIFUND_OWN_Build_All-&V_SERVICE_NAME.-&V_DT..spool.out  
set echo on

WHENEVER SQLERROR EXIT SQL.SQLCODE; -- Incluir siempre
WHENEVER OSERROR EXIT FAILURE;

alter session set NLS_TERRITORY=CHILE;
alter session set NLS_LANGUAGE=SPANISH;


-- Valida Language and encoding
@../../../0400-Utilities/eTest_NLS_Plus_Encoding.sql

-- DROP_OWNER_AND_ROLE='Yes'/'No' First time must be 'No'
DEFINE DROP_OWNER_AND_ROLE='Yes' 


@./Roles/TIFUND_OWN_DEVELOP_ROL.sql;
@./Roles/TIFUND_OWN_DEPLOY_ROL.sql;

@./Users/TIFUND_OWN.sql;

PROMPT # Contexts
@./Context/FDC_NULL_CTX.sql;


PROMPT # Tables
@./Tables/GRL_SISTEMAS.sql;
@./Tables/GRL_COMPOSICION_SISTEMAS.sql;
@./Tables/ULP_PROCESOS.sql;
@./Tables/ULP_DET_PROCESOS.sql;
@./Tables/UER_ERRORES.sql;

--XXXPROMPT Tiggers
--XXX@./Triggers/ERRO_BI_TRG.trg;
--XXX@./Triggers/ERRO_BU_TRG.trg;
--XXX@./Triggers/SIST_BI_TRG.trg;
--XXX@./Triggers/SIST_BU_TRG.trg;
--XXX@./Triggers/COSI_BI_TRG.trg;
--XXX@./Triggers/COSI_BU_TRG.trg;
--XXX@./Triggers/PROC_BI_TRG.trg;
--XXX@./Triggers/PROC_BU_TRG.trg;
--XXX@./Triggers/DEPR_BI_TRG.trg;
--XXX@./Triggers/DEPR_BU_TRG.trg;

--XXXPROMPT Indexes
--XXX@./Indexes/SIST_PK.sql;
--XXX@./Indexes/COSI_PK.sql;
--XXX@./Indexes/PROC_PK.sql;
--XXX@./Indexes/DEPR_PK.sql;
--XXX@./Indexes/ERRO_PK.sql;

--XXXPROMPT Constraints
--XXX@./Constraints/UER_ERRORES_NonFK.sql;
--XXX@./Constraints/GRL_SISTEMAS_NonFK.sql;
--XXX@./Constraints/GRL_COMPOSICION_SISTEMAS_NonFK.sql;
--XXX@./Constraints/ULP_PROCESOS_NonFK.sql;
--XXX@./Constraints/ULP_DET_PROCESOS_NonFK.sql;
--XXX@./Constraints/GRL_COMPOSICION_SISTEMAS_FK.sql;
--XXX@./Constraints/ULP_PROCESOS_FK.sql;
--XXX1@./Constraints/ULP_DET_PROCESOS_FK.sql;

PROMPT ### Packages
@./Packages/FDC_DEFS.pks.sql;
@./Packages/GLB_USER_EXCEPTIONS.pks.sql;

@./Packages/INVOCATION_PARAMS_CONTEXT.pks.sql;
@./Packages/SET_AS_UNINVOKED_PARAMETER.pks.sql;
@./Packages/FDC_UTILITY.pks.sql;


@./Packages/UER_ERRORES_TP.pks.sql;
@./Packages/UER_ERRORES_CP.pks.sql;
@./Packages/UER_ERRORES_QP.pks.sql;
@./Packages/UTL_ERROR.pks.sql;

@./Packages/GRL_SISTEMAS_TP.pks.sql;
@./Packages/GRL_SISTEMAS_QP.pks.sql;
@./Packages/GRL_SISTEMAS_CP.pks.sql;
@./Packages/GRL_COMPOSICION_SISTEMAS_TP.pks.sql;
@./Packages/GRL_COMPOSICION_SISTEMAS_QP.pks.sql;
@./Packages/GRL_COMPOSICION_SISTEMAS_CP.pks.sql;

@./Packages/ULP_PROCESOS_TP.pks.sql;
@./Packages/ULP_PROCESOS_QP.pks.sql;
@./Packages/ULP_PROCESOS_CP.pks.sql;

@./Packages/ULP_DET_PROCESOS_TP.pks.sql;
@./Packages/ULP_DET_PROCESOS_QP.pks.sql;
@./Packages/ULP_DET_PROCESOS_CP.pks.sql;
@./Packages/ULP_DET_PROCESOS_XP.pks.sql;
@./Packages/UTL_LOG_PROCESOS.pks.sql;

PROMPT ### Package Bodies
@./Packages/UER_ERRORES_CP.pkb.sql;
@./Packages/UER_ERRORES_QP.pkb.sql;
@./Packages/UTL_ERROR.pkb.sql;

@./Packages/INVOCATION_PARAMS_CONTEXT.pkb.sql;
@./Packages/SET_AS_UNINVOKED_PARAMETER.pkb.sql;

@./Packages/GRL_SISTEMAS_QP.pkb.sql;
@./Packages/GRL_SISTEMAS_CP.pkb.sql;
@./Packages/GRL_COMPOSICION_SISTEMAS_QP.pkb.sql;
@./Packages/GRL_COMPOSICION_SISTEMAS_CP.pkb.sql;

@./Packages/ULP_PROCESOS_QP.pkb.sql;
@./Packages/ULP_PROCESOS_CP.pkb.sql;
@./Packages/ULP_DET_PROCESOS_QP.pkb.sql;
@./Packages/ULP_DET_PROCESOS_CP.pkb.sql;
@./Packages/ULP_DET_PROCESOS_XP.pkb.sql;
@./Packages/UTL_LOG_PROCESOS.pkb.sql;

@./Packages/FDC_UTILITY.pkb.sql;

@./Functions/CHECK_EXISTS.fnc.sql;


@./Synonyms/PUBLIC_SYNONYMS.sql

-- Roles para Developers de otras aplicaciones (Third paries Apps) 
@./Roles/TIFUND_DEV_ROL.sql

PROMPT No olvidar cargar los datos iniciales desde el directorio <APP_HOME>\0100-BD\Data

PROMPT ### Finished!!!

spool off
