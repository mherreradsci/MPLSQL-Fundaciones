CREATE OR REPLACE PACKAGE BODY "TIFUND_OWN"."GRL_COMPOSICION_SISTEMAS_CP"
--@!!Start
--@!! Generado por #APPVER#:GECO V1.0 winter 2024
--@!! Timestamp #TMSTMP#:20240822233230
--@!! Autor #AUTHOR#:Marcelo Herrera Tejada
--@!! Tabla #TSHORT#:COSI
--@!! No modifique este código
--@!!End
/*******************************************************************************
* Empresa:    Explora Information Technologies
* Proyecto:   Generador de APIs de tablas
*             GAT
* Nombre:     GRL_COMPOSICION_SISTEMAS_CP
* Proposito:  Package que implementa las DML o Changes sobre la tabla
* Tabla:      GRL_COMPOSICION_SISTEMAS
* Descipción de la tabla:
* --** No disponible **--
*
* Cuando      Quien        Que
* ----------- ------------ -----------------------------------------------------
* 13-Aug-2024 MHERRERA     Creación
*******************************************************************************/
 is

    -- Inserta un registro en la tabla GRL_COMPOSICION_SISTEMAS via un record
    procedure ins(
        p_GRL_COMPOSICION_SISTEMAS GRL_COMPOSICION_SISTEMAS_TP.GRL_COMPOSICION_SISTEMAS_rt
    ) IS
        --* Constantes para identificar el programa
        k_programa CONSTANT FDC_DEFS.program_name_t := 'INS';
        k_modulo CONSTANT FDC_DEFS.module_name_t := k_package || '.' || k_programa;
        -- Variables, constantes, tipos y subtipos locales
    begin
        insert into GRL_COMPOSICION_SISTEMAS(
            SIST_ID_SISTEMA
            ,SIST_ID_SUBSISTEMA
            ,NOMBRE_PROYECTO
            ,AUD_CREADO_EL
            ,AUD_CREADO_POR
            ,AUD_MODIFICADO_EL
            ,AUD_MODIFICADO_POR
        )
        values (
            p_GRL_COMPOSICION_SISTEMAS.SIST_ID_SISTEMA
            ,p_GRL_COMPOSICION_SISTEMAS.SIST_ID_SUBSISTEMA
            ,p_GRL_COMPOSICION_SISTEMAS.NOMBRE_PROYECTO
            ,p_GRL_COMPOSICION_SISTEMAS.AUD_CREADO_EL
            ,p_GRL_COMPOSICION_SISTEMAS.AUD_CREADO_POR
            ,p_GRL_COMPOSICION_SISTEMAS.AUD_MODIFICADO_EL
            ,p_GRL_COMPOSICION_SISTEMAS.AUD_MODIFICADO_POR
        );

    exception
        when others then
            utl_error.informa (
                p_programa => k_modulo
            );
            raise;
    end ins;

    -- Inserta un registro en la tabla GRL_COMPOSICION_SISTEMAS via la Lista de Columnas
    procedure ins(
        p_sist_id_sistema IN GRL_COMPOSICION_SISTEMAS_TP.sist_id_sistema_t
        ,p_sist_id_subsistema IN GRL_COMPOSICION_SISTEMAS_TP.sist_id_subsistema_t
        ,p_nombre_proyecto IN GRL_COMPOSICION_SISTEMAS_TP.nombre_proyecto_t
        ,p_aud_creado_el IN GRL_COMPOSICION_SISTEMAS_TP.aud_creado_el_t DEFAULT sysdate
        ,p_aud_creado_por IN GRL_COMPOSICION_SISTEMAS_TP.aud_creado_por_t DEFAULT user
        ,p_aud_modificado_el IN GRL_COMPOSICION_SISTEMAS_TP.aud_modificado_el_t DEFAULT NULL
        ,p_aud_modificado_por IN GRL_COMPOSICION_SISTEMAS_TP.aud_modificado_por_t DEFAULT NULL
    ) IS
        --* Constantes para identificar el programa
        k_programa CONSTANT FDC_DEFS.program_name_t := 'INS';
        k_modulo CONSTANT FDC_DEFS.module_name_t := k_package || '.' || k_programa;
        -- Variables, constantes, tipos y subtipos locales
    begin
        insert into GRL_COMPOSICION_SISTEMAS(
            SIST_ID_SISTEMA
            ,SIST_ID_SUBSISTEMA
            ,NOMBRE_PROYECTO
            ,AUD_CREADO_EL
            ,AUD_CREADO_POR
            ,AUD_MODIFICADO_EL
            ,AUD_MODIFICADO_POR
        )
        values (
            p_SIST_ID_SISTEMA
            ,p_SIST_ID_SUBSISTEMA
            ,p_NOMBRE_PROYECTO
            ,p_AUD_CREADO_EL
            ,p_AUD_CREADO_POR
            ,p_AUD_MODIFICADO_EL
            ,p_AUD_MODIFICADO_POR
        );

    exception
        when others then
            utl_error.informa (
                p_programa => k_modulo
            );
            raise;
    end ins;

    -- Inserta (modo bulk) registros en
   -- la tabla GRL_COMPOSICION_SISTEMAS vía un record de colección de columnas
    procedure ins(
        p_regs GRL_COMPOSICION_SISTEMAS_TP.GRL_COMPOSICION_SISTEMAS_ct
    ) IS
        --* Constantes para identificar el programa
        k_programa CONSTANT FDC_DEFS.program_name_t := 'INS';
        k_modulo CONSTANT FDC_DEFS.module_name_t := k_package || '.' || k_programa;
        -- Variables, constantes, tipos y subtipos locales
        v_sist_id_sistema GRL_COMPOSICION_SISTEMAS_TP.SIST_ID_SISTEMA_ct;
        v_sist_id_subsistema GRL_COMPOSICION_SISTEMAS_TP.SIST_ID_SUBSISTEMA_ct;
        v_nombre_proyecto GRL_COMPOSICION_SISTEMAS_TP.NOMBRE_PROYECTO_ct;
        v_aud_creado_el GRL_COMPOSICION_SISTEMAS_TP.AUD_CREADO_EL_ct;
        v_aud_creado_por GRL_COMPOSICION_SISTEMAS_TP.AUD_CREADO_POR_ct;
        v_aud_modificado_el GRL_COMPOSICION_SISTEMAS_TP.AUD_MODIFICADO_EL_ct;
        v_aud_modificado_por GRL_COMPOSICION_SISTEMAS_TP.AUD_MODIFICADO_POR_ct;
    begin
        FOR indx IN p_regs.FIRST .. p_regs.LAST LOOP
            v_SIST_ID_SISTEMA(indx) := p_regs(indx).SIST_ID_SISTEMA;
        end loop;
        FOR indx IN p_regs.FIRST .. p_regs.LAST LOOP
            v_SIST_ID_SUBSISTEMA(indx) := p_regs(indx).SIST_ID_SUBSISTEMA;
        end loop;
        FOR indx IN p_regs.FIRST .. p_regs.LAST LOOP
            v_NOMBRE_PROYECTO(indx) := p_regs(indx).NOMBRE_PROYECTO;
        end loop;
        FOR indx IN p_regs.FIRST .. p_regs.LAST LOOP
            v_AUD_CREADO_EL(indx) := p_regs(indx).AUD_CREADO_EL;
        end loop;
        FOR indx IN p_regs.FIRST .. p_regs.LAST LOOP
            v_AUD_CREADO_POR(indx) := p_regs(indx).AUD_CREADO_POR;
        end loop;
        FOR indx IN p_regs.FIRST .. p_regs.LAST LOOP
            v_AUD_MODIFICADO_EL(indx) := p_regs(indx).AUD_MODIFICADO_EL;
        end loop;
        FOR indx IN p_regs.FIRST .. p_regs.LAST LOOP
            v_AUD_MODIFICADO_POR(indx) := p_regs(indx).AUD_MODIFICADO_POR;
        end loop;
        FORALL indx IN p_regs.FIRST .. p_regs.LAST
            insert into GRL_COMPOSICION_SISTEMAS(
                SIST_ID_SISTEMA
                ,SIST_ID_SUBSISTEMA
                ,NOMBRE_PROYECTO
                ,AUD_CREADO_EL
                ,AUD_CREADO_POR
                ,AUD_MODIFICADO_EL
                ,AUD_MODIFICADO_POR
            )
            values (
                v_SIST_ID_SISTEMA(indx)
                ,v_SIST_ID_SUBSISTEMA(indx)
                ,v_NOMBRE_PROYECTO(indx)
                ,v_AUD_CREADO_EL(indx)
                ,v_AUD_CREADO_POR(indx)
                ,v_AUD_MODIFICADO_EL(indx)
                ,v_AUD_MODIFICADO_POR(indx)
            );

            v_SIST_ID_SISTEMA.DELETE;
            v_SIST_ID_SUBSISTEMA.DELETE;
            v_NOMBRE_PROYECTO.DELETE;
            v_AUD_CREADO_EL.DELETE;
            v_AUD_CREADO_POR.DELETE;
            v_AUD_MODIFICADO_EL.DELETE;
            v_AUD_MODIFICADO_POR.DELETE;
        exception
            when others then
                utl_error.informa (
                    p_programa => k_modulo
                );
                raise;
    end ins;

    -- Inserta (modo bulk) registros en
   -- la tabla GRL_COMPOSICION_SISTEMAS vía colecciones de columnas
    procedure ins(
        p_sist_id_sistema IN GRL_COMPOSICION_SISTEMAS_TP.sist_id_sistema_ct
        ,p_sist_id_subsistema IN GRL_COMPOSICION_SISTEMAS_TP.sist_id_subsistema_ct
        ,p_nombre_proyecto IN GRL_COMPOSICION_SISTEMAS_TP.nombre_proyecto_ct
        ,p_aud_creado_el IN GRL_COMPOSICION_SISTEMAS_TP.aud_creado_el_ct
        ,p_aud_creado_por IN GRL_COMPOSICION_SISTEMAS_TP.aud_creado_por_ct
        ,p_aud_modificado_el IN GRL_COMPOSICION_SISTEMAS_TP.aud_modificado_el_ct
        ,p_aud_modificado_por IN GRL_COMPOSICION_SISTEMAS_TP.aud_modificado_por_ct
    ) IS
        --* Constantes para identificar el programa
        k_programa CONSTANT FDC_DEFS.program_name_t := 'INS';
        k_modulo CONSTANT FDC_DEFS.module_name_t := k_package || '.' || k_programa;
        -- Variables, constantes, tipos y subtipos locales
    begin
        FORALL indx IN p_SIST_ID_SISTEMA.FIRST .. p_SIST_ID_SISTEMA.LAST
            insert into GRL_COMPOSICION_SISTEMAS(
                SIST_ID_SISTEMA
                ,SIST_ID_SUBSISTEMA
                ,NOMBRE_PROYECTO
                ,AUD_CREADO_EL
                ,AUD_CREADO_POR
                ,AUD_MODIFICADO_EL
                ,AUD_MODIFICADO_POR
            )
            values (
                p_SIST_ID_SISTEMA(indx)
                ,p_SIST_ID_SUBSISTEMA(indx)
                ,p_NOMBRE_PROYECTO(indx)
                ,p_AUD_CREADO_EL(indx)
                ,p_AUD_CREADO_POR(indx)
                ,p_AUD_MODIFICADO_EL(indx)
                ,p_AUD_MODIFICADO_POR(indx)
            );

        exception
            when others then
                utl_error.informa (
                    p_programa => k_modulo
                );
                raise;
    end ins;

    -- Actualiza un registro de la tabla GRL_COMPOSICION_SISTEMAS en función
   -- de la constraint COSI_PK
    procedure upd_COSI_PK(
        p_sist_id_sistema IN GRL_COMPOSICION_SISTEMAS_TP.sist_id_sistema_t
        ,p_sist_id_subsistema IN GRL_COMPOSICION_SISTEMAS_TP.sist_id_subsistema_t
        ,p_GRL_COMPOSICION_SISTEMAS IN GRL_COMPOSICION_SISTEMAS_TP.GRL_COMPOSICION_SISTEMAS_rt
    ) is
        --* Constantes para identificar el programa
        k_programa CONSTANT FDC_DEFS.program_name_t := 'UPD_COSI_PK';
        k_modulo CONSTANT FDC_DEFS.module_name_t := k_package || '.' || k_programa;
        -- Variables, constantes, tipos y subtipos locales
    begin
        update GRL_COMPOSICION_SISTEMAS
            set
                nombre_proyecto = p_GRL_COMPOSICION_SISTEMAS.nombre_proyecto
                ,aud_creado_el = p_GRL_COMPOSICION_SISTEMAS.aud_creado_el
                ,aud_creado_por = p_GRL_COMPOSICION_SISTEMAS.aud_creado_por
                ,aud_modificado_el = p_GRL_COMPOSICION_SISTEMAS.aud_modificado_el
                ,aud_modificado_por = p_GRL_COMPOSICION_SISTEMAS.aud_modificado_por
        where
            SIST_ID_SISTEMA = p_sist_id_sistema
            and   SIST_ID_SUBSISTEMA = p_sist_id_subsistema;

    exception
        when others then
            utl_error.informa (
                p_programa => k_modulo
            );
            raise;
    end upd_COSI_PK;


    -- Actualiza una columna de la tabla GRL_COMPOSICION_SISTEMAS
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
        EXECUTE IMMEDIATE 'update GRL_COMPOSICION_SISTEMAS '
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

    -- Actualiza una columna de la tabla GRL_COMPOSICION_SISTEMAS
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
        EXECUTE IMMEDIATE 'update GRL_COMPOSICION_SISTEMAS '
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

    -- Actualiza una columna de la tabla GRL_COMPOSICION_SISTEMAS
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
        EXECUTE IMMEDIATE 'update GRL_COMPOSICION_SISTEMAS '
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
   -- GRL_COMPOSICION_SISTEMAS en función de la
   -- constraint COSI_PK
    procedure upd_COSI_PK(
        p_sist_id_sistema IN GRL_COMPOSICION_SISTEMAS_TP.sist_id_sistema_t
        ,p_sist_id_subsistema IN GRL_COMPOSICION_SISTEMAS_TP.sist_id_subsistema_t ,
        p_nombre_proyecto IN GRL_COMPOSICION_SISTEMAS_TP.nombre_proyecto_t DEFAULT set_as_uninvoked_parameter.nlvc2('P3')
        ,p_aud_creado_el IN GRL_COMPOSICION_SISTEMAS_TP.aud_creado_el_t DEFAULT set_as_uninvoked_parameter.nldate('P4')
        ,p_aud_creado_por IN GRL_COMPOSICION_SISTEMAS_TP.aud_creado_por_t DEFAULT set_as_uninvoked_parameter.nlvc2('P5')
        ,p_aud_modificado_el IN GRL_COMPOSICION_SISTEMAS_TP.aud_modificado_el_t DEFAULT set_as_uninvoked_parameter.nldate('P6')
        ,p_aud_modificado_por IN GRL_COMPOSICION_SISTEMAS_TP.aud_modificado_por_t DEFAULT set_as_uninvoked_parameter.nlvc2('P7')
    ) IS
        --* Constantes para identificar el programa
        k_programa CONSTANT FDC_DEFS.program_name_t := 'UPD_COSI_PK';
        k_modulo CONSTANT FDC_DEFS.module_name_t := k_package || '.' || k_programa;
        -- Variables, constantes, tipos y subtipos locales
         v_client_info   VARCHAR2 (2048);
    begin
        invocation_params_context.read_client_info (v_client_info);
        update GRL_COMPOSICION_SISTEMAS
            set
                nombre_proyecto = CASE WHEN INSTR(v_client_info, '#P3#') > 0 then nombre_proyecto ELSE p_nombre_proyecto END
                ,aud_creado_el = CASE WHEN INSTR(v_client_info, '#P4#') > 0 then aud_creado_el ELSE p_aud_creado_el END
                ,aud_creado_por = CASE WHEN INSTR(v_client_info, '#P5#') > 0 then aud_creado_por ELSE p_aud_creado_por END
                ,aud_modificado_el = CASE WHEN INSTR(v_client_info, '#P6#') > 0 then aud_modificado_el ELSE p_aud_modificado_el END
                ,aud_modificado_por = CASE WHEN INSTR(v_client_info, '#P7#') > 0 then aud_modificado_por ELSE p_aud_modificado_por END
        where
            SIST_ID_SISTEMA = p_sist_id_sistema
            and   SIST_ID_SUBSISTEMA = p_sist_id_subsistema;

        invocation_params_context.set_client_info (NULL);
    exception
        when others then
            utl_error.informa (
                p_programa => k_modulo
            );
            raise;
    end upd_COSI_PK;


    -- Borra registro(s) de la tabla GRL_COMPOSICION_SISTEMAS en
   -- función de la constraint COSI_PK
    function del_COSI_PK(
        p_sist_id_sistema IN GRL_COMPOSICION_SISTEMAS_TP.sist_id_sistema_t
        ,p_sist_id_subsistema IN GRL_COMPOSICION_SISTEMAS_TP.sist_id_subsistema_t
    ) RETURN SIMPLE_INTEGER IS
        --* Constantes para identificar el programa
        k_programa CONSTANT FDC_DEFS.program_name_t := 'DEL_COSI_PK';
        k_modulo CONSTANT FDC_DEFS.module_name_t := k_package || '.' || k_programa;
        -- Variables, constantes, tipos y subtipos locales
        v_num_regs SIMPLE_INTEGER := 0;
    begin
        delete GRL_COMPOSICION_SISTEMAS
        where
            SIST_ID_SISTEMA = p_sist_id_sistema
            and   SIST_ID_SUBSISTEMA = p_sist_id_subsistema;

        v_num_regs := SQL%ROWCOUNT;
        RETURN v_num_regs;
    exception
        when others then
            utl_error.informa (
                p_programa => k_modulo
            );
            raise;
    end del_COSI_PK;



    -- Borra registro(s) de la tabla GRL_COMPOSICION_SISTEMAS en
   -- función de la constraint COSI_SIST_COMPUESTO_DE_FK
    function del_COSI_SIST_COMPUESTO_DE_FK(
        p_sist_id_subsistema IN GRL_COMPOSICION_SISTEMAS_TP.sist_id_subsistema_t
    ) RETURN SIMPLE_INTEGER IS
        --* Constantes para identificar el programa
        k_programa CONSTANT FDC_DEFS.program_name_t := 'DEL_COSI_SIST_COMPUESTO_DE_FK';
        k_modulo CONSTANT FDC_DEFS.module_name_t := k_package || '.' || k_programa;
        -- Variables, constantes, tipos y subtipos locales
        v_num_regs SIMPLE_INTEGER := 0;
    begin
        delete GRL_COMPOSICION_SISTEMAS
        where
            SIST_ID_SUBSISTEMA = p_sist_id_subsistema;

        v_num_regs := SQL%ROWCOUNT;
        RETURN v_num_regs;
    exception
        when others then
            utl_error.informa (
                p_programa => k_modulo
            );
            raise;
    end del_COSI_SIST_COMPUESTO_DE_FK;

    -- Borra registro(s) de la tabla GRL_COMPOSICION_SISTEMAS en
   -- función de la constraint COSI_SIST_COMPUESTO_POR_FK
    function del_COSI_SIST_COMPUESTO_POR_FK(
        p_sist_id_sistema IN GRL_COMPOSICION_SISTEMAS_TP.sist_id_sistema_t
    ) RETURN SIMPLE_INTEGER IS
        --* Constantes para identificar el programa
        k_programa CONSTANT FDC_DEFS.program_name_t := 'DEL_COSI_SIST_COMPUESTO_POR_FK';
        k_modulo CONSTANT FDC_DEFS.module_name_t := k_package || '.' || k_programa;
        -- Variables, constantes, tipos y subtipos locales
        v_num_regs SIMPLE_INTEGER := 0;
    begin
        delete GRL_COMPOSICION_SISTEMAS
        where
            SIST_ID_SISTEMA = p_sist_id_sistema;

        v_num_regs := SQL%ROWCOUNT;
        RETURN v_num_regs;
    exception
        when others then
            utl_error.informa (
                p_programa => k_modulo
            );
            raise;
    end del_COSI_SIST_COMPUESTO_POR_FK;


    -- Borra registro(s) de la tabla GRL_COMPOSICION_SISTEMAS en
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
            EXECUTE IMMEDIATE 'delete GRL_COMPOSICION_SISTEMAS';
        else
            EXECUTE IMMEDIATE 'delete GRL_COMPOSICION_SISTEMAS where ' || p_where;
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

    -- Borra registro(s) de la tabla GRL_COMPOSICION_SISTEMAS en
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
        EXECUTE IMMEDIATE 'delete GRL_COMPOSICION_SISTEMAS' ||
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

    -- Borra registro(s) de la tabla GRL_COMPOSICION_SISTEMAS en
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
        EXECUTE IMMEDIATE 'delete GRL_COMPOSICION_SISTEMAS' ||
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

    -- Borra registro(s) de la tabla GRL_COMPOSICION_SISTEMAS en
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
        EXECUTE IMMEDIATE 'delete GRL_COMPOSICION_SISTEMAS' ||
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


end GRL_COMPOSICION_SISTEMAS_CP;
/
