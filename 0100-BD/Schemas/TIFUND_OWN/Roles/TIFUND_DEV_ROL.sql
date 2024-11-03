DEFINE V_ROLE="TIFUND_DEV_ROL"

begin
    IF '&DROP_OWNER_AND_ROLE' = 'Yes' then
        execute immediate 'DROP ROLE &V_ROLE';
    END IF;
exception
    when others then
        -- If the role the script is trying to delete does not exist,
        -- the process continues as normal. But, if there is another error,
        -- then it raises the error.
        if SQLCODE != -01919 then
            raise;
        end if;
end;
/

CREATE ROLE "&V_ROLE" NOT IDENTIFIED
/

GRANT SELECT, INSERT, UPDATE, DELETE on TIFUND_OWN.GRL_SISTEMAS TO "&V_ROLE"
/
GRANT SELECT, INSERT, UPDATE, DELETE on TIFUND_OWN.GRL_COMPOSICION_SISTEMAS TO "&V_ROLE"
/
GRANT SELECT, INSERT, UPDATE, DELETE on TIFUND_OWN.ULP_PROCESOS TO "&V_ROLE"
/
GRANT SELECT, INSERT, UPDATE, DELETE on TIFUND_OWN.ULP_DET_PROCESOS TO "&V_ROLE"
/
GRANT SELECT, INSERT, UPDATE, DELETE on TIFUND_OWN.UER_ERRORES TO "&V_ROLE"
/
