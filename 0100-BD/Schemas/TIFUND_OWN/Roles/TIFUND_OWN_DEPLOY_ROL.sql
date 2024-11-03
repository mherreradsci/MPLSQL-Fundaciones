DEFINE V_ROLE="TIFUND_OWN_DEPLOY_ROL"

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


-- El ROL de Deploy para el OWNER en ambientes de TEST, PRE-Produccion y Producci�n no debe tener alg�n privilegio
CREATE ROLE "&V_ROLE" NOT IDENTIFIED
/
