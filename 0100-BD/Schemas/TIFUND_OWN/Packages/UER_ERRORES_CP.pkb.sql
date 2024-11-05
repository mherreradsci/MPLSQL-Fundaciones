CREATE OR REPLACE PACKAGE BODY "TIFUND_OWN"."UER_ERRORES_CP"
--@!!Start
--@!! Generado por #APPVER#:GECO V1.0 winter 2024
--@!! Timestamp #TMSTMP#:20240822233232
--@!! Autor #AUTHOR#:Marcelo Herrera Tejada
--@!! Tabla #TSHORT#:ERRO
--@!! No modifique este código
--@!!End
/*******************************************************************************
* Empresa:    Explora Information Technologies
* Proyecto:   Generador de APIs de tablas
*             GAT
* Nombre:     UER_ERRORES_CP
* Proposito:  Package que implementa las DML o Changes sobre la tabla
* Tabla:      UER_ERRORES
* Descipción de la tabla:
* Registra los errores, generalmente, capturados por el bloque "exception
* others". Se utiliza transversalmente cuando se adhiere al framework de
* "Desarrollo de Aplicaciones Empresariales PL/SQL"
*
* Cuando      Quien        Que
* ----------- ------------ -----------------------------------------------------
* 22-Aug-2024 MHERRERA     Creación
*******************************************************************************/
 is

    function siguiente_clave (p_secuencia IN VARCHAR2 DEFAULT 'UER_ERRORES_SEC')
        RETURN NUMBER
    IS
        --* Constantes para identificar el programa
        k_programa CONSTANT FDC_DEFS.program_name_t := 'SIGUIENTE_CLAVE';
        k_modulo CONSTANT FDC_DEFS.module_name_t := k_package || '.' || k_programa;
        -- Variables, constantes, tipos y subtipos locales
        retval NUMBER;
    begin
       EXECUTE IMMEDIATE
          'SELECT ' || p_secuencia || '.NEXTVAL FROM DUAL'
            INTO retval;
       RETURN retval;
    exception
        when others then
            utl_error.informa (
                p_programa => k_modulo
            );
            raise;
    end siguiente_clave;

    -- Inserta un registro en la tabla UER_ERRORES via un record
    procedure ins(
        p_UER_ERRORES UER_ERRORES_TP.UER_ERRORES_rt
    ) IS
        --* Constantes para identificar el programa
        k_programa CONSTANT FDC_DEFS.program_name_t := 'INS';
        k_modulo CONSTANT FDC_DEFS.module_name_t := k_package || '.' || k_programa;
        -- Variables, constantes, tipos y subtipos locales
    begin
        insert into UER_ERRORES(
            ERRO_ID
            ,PROGRAMA
            ,MENSAJE
            ,AUD_CREADO_POR
            ,AUD_CREADO_EN
            ,AUD_MODIFICADO_POR
            ,AUD_MODIFICADO_EN
            ,LOPR_ID
        )
        values (
            p_UER_ERRORES.ERRO_ID
            ,p_UER_ERRORES.PROGRAMA
            ,p_UER_ERRORES.MENSAJE
            ,p_UER_ERRORES.AUD_CREADO_POR
            ,p_UER_ERRORES.AUD_CREADO_EN
            ,p_UER_ERRORES.AUD_MODIFICADO_POR
            ,p_UER_ERRORES.AUD_MODIFICADO_EN
            ,p_UER_ERRORES.LOPR_ID
        );

    exception
        when others then
            utl_error.informa (
                p_programa => k_modulo
            );
            raise;
    end ins;

    -- Inserta un registro en la tabla UER_ERRORES via la Lista de Columnas
    procedure ins(
        p_erro_id IN UER_ERRORES_TP.erro_id_t
        ,p_programa IN UER_ERRORES_TP.programa_t
        ,p_mensaje IN UER_ERRORES_TP.mensaje_t DEFAULT NULL
        ,p_aud_creado_por IN UER_ERRORES_TP.aud_creado_por_t DEFAULT USER
        ,p_aud_creado_en IN UER_ERRORES_TP.aud_creado_en_t DEFAULT LOCALTIMESTAMP
        ,p_aud_modificado_por IN UER_ERRORES_TP.aud_modificado_por_t DEFAULT NULL
        ,p_aud_modificado_en IN UER_ERRORES_TP.aud_modificado_en_t DEFAULT NULL
        ,p_lopr_id IN UER_ERRORES_TP.lopr_id_t DEFAULT NULL
    ) IS
        --* Constantes para identificar el programa
        k_programa CONSTANT FDC_DEFS.program_name_t := 'INS';
        k_modulo CONSTANT FDC_DEFS.module_name_t := k_package || '.' || k_programa;
        -- Variables, constantes, tipos y subtipos locales
    begin
        insert into UER_ERRORES(
            ERRO_ID
            ,PROGRAMA
            ,MENSAJE
            ,AUD_CREADO_POR
            ,AUD_CREADO_EN
            ,AUD_MODIFICADO_POR
            ,AUD_MODIFICADO_EN
            ,LOPR_ID
        )
        values (
            p_ERRO_ID
            ,p_PROGRAMA
            ,p_MENSAJE
            ,p_AUD_CREADO_POR
            ,p_AUD_CREADO_EN
            ,p_AUD_MODIFICADO_POR
            ,p_AUD_MODIFICADO_EN
            ,p_LOPR_ID
        );

    exception
        when others then
            utl_error.informa (
                p_programa => k_modulo
            );
            raise;
    end ins;

    -- Inserta (modo bulk) registros en
   -- la tabla UER_ERRORES vía un record de colección de columnas
    procedure ins(
        p_regs UER_ERRORES_TP.UER_ERRORES_ct
    ) IS
        --* Constantes para identificar el programa
        k_programa CONSTANT FDC_DEFS.program_name_t := 'INS';
        k_modulo CONSTANT FDC_DEFS.module_name_t := k_package || '.' || k_programa;
        -- Variables, constantes, tipos y subtipos locales
        v_erro_id UER_ERRORES_TP.ERRO_ID_ct;
        v_programa UER_ERRORES_TP.PROGRAMA_ct;
        v_mensaje UER_ERRORES_TP.MENSAJE_ct;
        v_aud_creado_por UER_ERRORES_TP.AUD_CREADO_POR_ct;
        v_aud_creado_en UER_ERRORES_TP.AUD_CREADO_EN_ct;
        v_aud_modificado_por UER_ERRORES_TP.AUD_MODIFICADO_POR_ct;
        v_aud_modificado_en UER_ERRORES_TP.AUD_MODIFICADO_EN_ct;
        v_lopr_id UER_ERRORES_TP.LOPR_ID_ct;
    begin
        FOR indx IN p_regs.FIRST .. p_regs.LAST LOOP
            v_ERRO_ID(indx) := p_regs(indx).ERRO_ID;
        end loop;
        FOR indx IN p_regs.FIRST .. p_regs.LAST LOOP
            v_PROGRAMA(indx) := p_regs(indx).PROGRAMA;
        end loop;
        FOR indx IN p_regs.FIRST .. p_regs.LAST LOOP
            v_MENSAJE(indx) := p_regs(indx).MENSAJE;
        end loop;
        FOR indx IN p_regs.FIRST .. p_regs.LAST LOOP
            v_AUD_CREADO_POR(indx) := p_regs(indx).AUD_CREADO_POR;
        end loop;
        FOR indx IN p_regs.FIRST .. p_regs.LAST LOOP
            v_AUD_CREADO_EN(indx) := p_regs(indx).AUD_CREADO_EN;
        end loop;
        FOR indx IN p_regs.FIRST .. p_regs.LAST LOOP
            v_AUD_MODIFICADO_POR(indx) := p_regs(indx).AUD_MODIFICADO_POR;
        end loop;
        FOR indx IN p_regs.FIRST .. p_regs.LAST LOOP
            v_AUD_MODIFICADO_EN(indx) := p_regs(indx).AUD_MODIFICADO_EN;
        end loop;
        FOR indx IN p_regs.FIRST .. p_regs.LAST LOOP
            v_LOPR_ID(indx) := p_regs(indx).LOPR_ID;
        end loop;
        FORALL indx IN p_regs.FIRST .. p_regs.LAST
            insert into UER_ERRORES(
                ERRO_ID
                ,PROGRAMA
                ,MENSAJE
                ,AUD_CREADO_POR
                ,AUD_CREADO_EN
                ,AUD_MODIFICADO_POR
                ,AUD_MODIFICADO_EN
                ,LOPR_ID
            )
            values (
                v_ERRO_ID(indx)
                ,v_PROGRAMA(indx)
                ,v_MENSAJE(indx)
                ,v_AUD_CREADO_POR(indx)
                ,v_AUD_CREADO_EN(indx)
                ,v_AUD_MODIFICADO_POR(indx)
                ,v_AUD_MODIFICADO_EN(indx)
                ,v_LOPR_ID(indx)
            );

            v_ERRO_ID.DELETE;
            v_PROGRAMA.DELETE;
            v_MENSAJE.DELETE;
            v_AUD_CREADO_POR.DELETE;
            v_AUD_CREADO_EN.DELETE;
            v_AUD_MODIFICADO_POR.DELETE;
            v_AUD_MODIFICADO_EN.DELETE;
            v_LOPR_ID.DELETE;
        exception
            when others then
                utl_error.informa (
                    p_programa => k_modulo
                );
                raise;
    end ins;

    -- Inserta (modo bulk) registros en
   -- la tabla UER_ERRORES vía colecciones de columnas
    procedure ins(
        p_erro_id IN UER_ERRORES_TP.erro_id_ct
        ,p_programa IN UER_ERRORES_TP.programa_ct
        ,p_mensaje IN UER_ERRORES_TP.mensaje_ct
        ,p_aud_creado_por IN UER_ERRORES_TP.aud_creado_por_ct
        ,p_aud_creado_en IN UER_ERRORES_TP.aud_creado_en_ct
        ,p_aud_modificado_por IN UER_ERRORES_TP.aud_modificado_por_ct
        ,p_aud_modificado_en IN UER_ERRORES_TP.aud_modificado_en_ct
        ,p_lopr_id IN UER_ERRORES_TP.lopr_id_ct
    ) IS
        --* Constantes para identificar el programa
        k_programa CONSTANT FDC_DEFS.program_name_t := 'INS';
        k_modulo CONSTANT FDC_DEFS.module_name_t := k_package || '.' || k_programa;
        -- Variables, constantes, tipos y subtipos locales
    begin
        FORALL indx IN p_ERRO_ID.FIRST .. p_ERRO_ID.LAST
            insert into UER_ERRORES(
                ERRO_ID
                ,PROGRAMA
                ,MENSAJE
                ,AUD_CREADO_POR
                ,AUD_CREADO_EN
                ,AUD_MODIFICADO_POR
                ,AUD_MODIFICADO_EN
                ,LOPR_ID
            )
            values (
                p_ERRO_ID(indx)
                ,p_PROGRAMA(indx)
                ,p_MENSAJE(indx)
                ,p_AUD_CREADO_POR(indx)
                ,p_AUD_CREADO_EN(indx)
                ,p_AUD_MODIFICADO_POR(indx)
                ,p_AUD_MODIFICADO_EN(indx)
                ,p_LOPR_ID(indx)
            );

        exception
            when others then
                utl_error.informa (
                    p_programa => k_modulo
                );
                raise;
    end ins;

    -- Actualiza un registro de la tabla UER_ERRORES en función
   -- de la constraint ERRO_PK
    procedure upd_ERRO_PK(
        p_erro_id IN UER_ERRORES_TP.erro_id_t
        ,p_UER_ERRORES IN UER_ERRORES_TP.UER_ERRORES_rt
    ) is
        --* Constantes para identificar el programa
        k_programa CONSTANT FDC_DEFS.program_name_t := 'UPD_ERRO_PK';
        k_modulo CONSTANT FDC_DEFS.module_name_t := k_package || '.' || k_programa;
        -- Variables, constantes, tipos y subtipos locales
    begin
        update UER_ERRORES
            set
                programa = p_UER_ERRORES.programa
                ,mensaje = p_UER_ERRORES.mensaje
                ,aud_creado_por = p_UER_ERRORES.aud_creado_por
                ,aud_creado_en = p_UER_ERRORES.aud_creado_en
                ,aud_modificado_por = p_UER_ERRORES.aud_modificado_por
                ,aud_modificado_en = p_UER_ERRORES.aud_modificado_en
                ,lopr_id = p_UER_ERRORES.lopr_id
        where
            ERRO_ID = p_erro_id;

    exception
        when others then
            utl_error.informa (
                p_programa => k_modulo
            );
            raise;
    end upd_ERRO_PK;


    -- Actualiza una columna de la tabla UER_ERRORES
   -- en función de un where dinámico
    function upd_por_una_columna(
        p_Nombre_Columna in varchar2,
        p_Valor_Columna in NUMBER,
        p_Where in VARCHAR2
    ) RETURN PLS_INTEGER IS
        --* Constantes para identificar el programa
        k_programa CONSTANT FDC_DEFS.program_name_t := 'UPD_POR_UNA_COLUMNA';
        k_modulo CONSTANT FDC_DEFS.module_name_t := k_package || '.' || k_programa;
        -- Variables, constantes, tipos y subtipos locales
        v_num_regs PLS_INTEGER;
    begin
        EXECUTE IMMEDIATE 'update UER_ERRORES '
        ||'SET ' || P_NOMBRE_COLUMNA || '= :1 '
            ||'WHERE '|| NVL(P_WHERE, '1=1')
            USING p_Valor_Columna;
        v_num_regs := SQL%ROWCOUNT;
        RETURN v_num_regs;
    exception
        when others then
            utl_error.informa (
                p_programa => k_modulo
            );
            raise;
    end upd_por_una_columna;

    -- Actualiza una columna de la tabla UER_ERRORES
   -- en función de un where dinámico
    function upd_por_una_columna(
        p_Nombre_Columna in varchar2,
        p_Valor_Columna in DATE,
        p_Where in VARCHAR2
    ) RETURN PLS_INTEGER IS
        --* Constantes para identificar el programa
        k_programa CONSTANT FDC_DEFS.program_name_t := 'UPD_POR_UNA_COLUMNA';
        k_modulo CONSTANT FDC_DEFS.module_name_t := k_package || '.' || k_programa;
        -- Variables, constantes, tipos y subtipos locales
        v_num_regs PLS_INTEGER;
    begin
        EXECUTE IMMEDIATE 'update UER_ERRORES '
        ||'SET ' || P_NOMBRE_COLUMNA || '= :1 '
            ||'WHERE '|| NVL(P_WHERE, '1=1')
            USING p_Valor_Columna;
        v_num_regs := SQL%ROWCOUNT;
        RETURN v_num_regs;
    exception
        when others then
            utl_error.informa (
                p_programa => k_modulo
            );
            raise;
    end upd_por_una_columna;

    -- Actualiza una columna de la tabla UER_ERRORES
   -- en función de un where dinámico
    function upd_por_una_columna(
        p_Nombre_Columna in varchar2,
        p_Valor_Columna in VARCHAR2,
        p_Where in VARCHAR2
    ) RETURN PLS_INTEGER IS
        --* Constantes para identificar el programa
        k_programa CONSTANT FDC_DEFS.program_name_t := 'UPD_POR_UNA_COLUMNA';
        k_modulo CONSTANT FDC_DEFS.module_name_t := k_package || '.' || k_programa;
        -- Variables, constantes, tipos y subtipos locales
        v_num_regs PLS_INTEGER;
    begin
        EXECUTE IMMEDIATE 'update UER_ERRORES '
        ||'SET ' || P_NOMBRE_COLUMNA || '= :1 '
            ||'WHERE '|| NVL(P_WHERE, '1=1')
            USING p_Valor_Columna;
        v_num_regs := SQL%ROWCOUNT;
        RETURN v_num_regs;
    exception
        when others then
            utl_error.informa (
                p_programa => k_modulo
            );
            raise;
    end upd_por_una_columna;

    -- Actualiza un conjunto de columnas de la tabla
   -- UER_ERRORES en función de la
   -- constraint ERRO_PK
    procedure upd_ERRO_PK(
        p_erro_id IN UER_ERRORES_TP.erro_id_t ,
        p_programa IN UER_ERRORES_TP.programa_t DEFAULT set_as_uninvoked_parameter.nlvc2('P2')
        ,p_mensaje IN UER_ERRORES_TP.mensaje_t DEFAULT set_as_uninvoked_parameter.nlvc2('P3')
        ,p_aud_creado_por IN UER_ERRORES_TP.aud_creado_por_t DEFAULT set_as_uninvoked_parameter.nlvc2('P4')
        ,p_aud_creado_en IN UER_ERRORES_TP.aud_creado_en_t DEFAULT set_as_uninvoked_parameter.nlts('P5')
        ,p_aud_modificado_por IN UER_ERRORES_TP.aud_modificado_por_t DEFAULT set_as_uninvoked_parameter.nlvc2('P6')
        ,p_aud_modificado_en IN UER_ERRORES_TP.aud_modificado_en_t DEFAULT set_as_uninvoked_parameter.nlts('P7')
        ,p_lopr_id IN UER_ERRORES_TP.lopr_id_t DEFAULT set_as_uninvoked_parameter.nlnum('P8')
    ) IS
        --* Constantes para identificar el programa
        k_programa CONSTANT FDC_DEFS.program_name_t := 'UPD_ERRO_PK';
        k_modulo CONSTANT FDC_DEFS.module_name_t := k_package || '.' || k_programa;
        -- Variables, constantes, tipos y subtipos locales
         v_client_info   VARCHAR2 (2048);
    begin
        invocation_params_context.read_client_info (v_client_info);
        update UER_ERRORES
            set
                programa = CASE WHEN INSTR(v_client_info, '#P2#') > 0 then programa ELSE p_programa END
                ,mensaje = CASE WHEN INSTR(v_client_info, '#P3#') > 0 then mensaje ELSE p_mensaje END
                ,aud_creado_por = CASE WHEN INSTR(v_client_info, '#P4#') > 0 then aud_creado_por ELSE p_aud_creado_por END
                ,aud_creado_en = CASE WHEN INSTR(v_client_info, '#P5#') > 0 then aud_creado_en ELSE p_aud_creado_en END
                ,aud_modificado_por = CASE WHEN INSTR(v_client_info, '#P6#') > 0 then aud_modificado_por ELSE p_aud_modificado_por END
                ,aud_modificado_en = CASE WHEN INSTR(v_client_info, '#P7#') > 0 then aud_modificado_en ELSE p_aud_modificado_en END
                ,lopr_id = CASE WHEN INSTR(v_client_info, '#P8#') > 0 then lopr_id ELSE p_lopr_id END
        where
            ERRO_ID = p_erro_id;

        invocation_params_context.set_client_info (NULL);
    exception
        when others then
            utl_error.informa (
                p_programa => k_modulo
            );
            raise;
    end upd_ERRO_PK;


    -- Borra registro(s) de la tabla UER_ERRORES en
   -- función de la constraint ERRO_PK
    function del_ERRO_PK(
        p_erro_id IN UER_ERRORES_TP.erro_id_t
    ) RETURN SIMPLE_INTEGER IS
        --* Constantes para identificar el programa
        k_programa CONSTANT FDC_DEFS.program_name_t := 'DEL_ERRO_PK';
        k_modulo CONSTANT FDC_DEFS.module_name_t := k_package || '.' || k_programa;
        -- Variables, constantes, tipos y subtipos locales
        v_num_regs SIMPLE_INTEGER := 0;
    begin
        delete UER_ERRORES
        where
            ERRO_ID = p_erro_id;

        v_num_regs := SQL%ROWCOUNT;
        RETURN v_num_regs;
    exception
        when others then
            utl_error.informa (
                p_programa => k_modulo
            );
            raise;
    end del_ERRO_PK;




    -- Borra registro(s) de la tabla UER_ERRORES en
   -- función de un where dinámico
    function del_din(
        p_where in varchar2
    ) RETURN PLS_INTEGER IS
        --* Constantes para identificar el programa
        k_programa CONSTANT FDC_DEFS.program_name_t := 'DEL_DIN';
        k_modulo CONSTANT FDC_DEFS.module_name_t := k_package || '.' || k_programa;
        -- Variables, constantes, tipos y subtipos locales
        v_num_regs PLS_INTEGER;
    begin
        if p_where is null then
            EXECUTE IMMEDIATE 'delete UER_ERRORES';
        else
            EXECUTE IMMEDIATE 'delete UER_ERRORES where ' || p_where;
        end if;
        v_num_regs := SQL%ROWCOUNT;
        RETURN v_num_regs;
    exception
        when others then
            utl_error.informa (
                p_programa => k_modulo
            );
            raise;
    end del_din;

    -- Borra registro(s) de la tabla UER_ERRORES en
   -- función de una columna especifica
    function del_por_una_columna(
        p_Nombre_Columna in varchar2,
        p_Valor_Columna in NUMBER
    ) RETURN PLS_INTEGER IS
        --* Constantes para identificar el programa
        k_programa CONSTANT FDC_DEFS.program_name_t := 'DEL_POR_UNA_COLUMNA';
        k_modulo CONSTANT FDC_DEFS.module_name_t := k_package || '.' || k_programa;
        -- Variables, constantes, tipos y subtipos locales
        v_num_regs PLS_INTEGER;
    begin
        EXECUTE IMMEDIATE 'delete UER_ERRORES' ||
            ' WHERE '|| P_NOMBRE_COLUMNA ||' = :1'
            USING p_Valor_Columna;
        v_num_regs := SQL%ROWCOUNT;
        RETURN v_num_regs;
    exception
        when others then
            utl_error.informa (
                p_programa => k_modulo
            );
            raise;
    end del_por_una_columna;

    -- Borra registro(s) de la tabla UER_ERRORES en
   -- función de una columna especifica
    function del_por_una_columna(
        p_Nombre_Columna in varchar2,
        p_Valor_Columna in DATE
    ) RETURN PLS_INTEGER IS
        --* Constantes para identificar el programa
        k_programa CONSTANT FDC_DEFS.program_name_t := 'DEL_POR_UNA_COLUMNA';
        k_modulo CONSTANT FDC_DEFS.module_name_t := k_package || '.' || k_programa;
        -- Variables, constantes, tipos y subtipos locales
        v_num_regs PLS_INTEGER;
    begin
        EXECUTE IMMEDIATE 'delete UER_ERRORES' ||
            ' WHERE '|| P_NOMBRE_COLUMNA ||' = :1'
            USING p_Valor_Columna;
        v_num_regs := SQL%ROWCOUNT;
        RETURN v_num_regs;
    exception
        when others then
            utl_error.informa (
                p_programa => k_modulo
            );
            raise;
    end del_por_una_columna;

    -- Borra registro(s) de la tabla UER_ERRORES en
   -- función de una columna especifica
    function del_por_una_columna(
        p_Nombre_Columna in varchar2,
        p_Valor_Columna in VARCHAR2
    ) RETURN PLS_INTEGER IS
        --* Constantes para identificar el programa
        k_programa CONSTANT FDC_DEFS.program_name_t := 'DEL_POR_UNA_COLUMNA';
        k_modulo CONSTANT FDC_DEFS.module_name_t := k_package || '.' || k_programa;
        -- Variables, constantes, tipos y subtipos locales
        v_num_regs PLS_INTEGER;
    begin
        EXECUTE IMMEDIATE 'delete UER_ERRORES' ||
            ' WHERE '|| P_NOMBRE_COLUMNA ||' = :1'
            USING p_Valor_Columna;
        v_num_regs := SQL%ROWCOUNT;
        RETURN v_num_regs;
    exception
        when others then
            utl_error.informa (
                p_programa => k_modulo
            );
            raise;
    end del_por_una_columna;


end UER_ERRORES_CP;
/
