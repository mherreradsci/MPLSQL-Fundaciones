CREATE OR REPLACE PACKAGE BODY "TIFUND_OWN"."ULP_DET_PROCESOS_CP"
--@!!Start
--@!! Generado por #APPVER#:GECO V1.0 winter 2024
--@!! Timestamp #TMSTMP#:20240822233231
--@!! Autor #AUTHOR#:Marcelo Herrera Tejada
--@!! Tabla #TSHORT#:DEPR
--@!! No modifique este código
--@!!End
/*******************************************************************************
* Empresa:    Explora Information Technologies
* Proyecto:   Generador de APIs de tablas
*             GAT
* Nombre:     ULP_DET_PROCESOS_CP
* Proposito:  Package que implementa las DML o Changes sobre la tabla
* Tabla:      ULP_DET_PROCESOS
* Descipción de la tabla:
* Bitacora para detalle  de procesos
*
* Cuando      Quien        Que
* ----------- ------------ -----------------------------------------------------
* 13-Aug-2024 MHERRERA     Creación
*******************************************************************************/
 is

    -- Inserta un registro en la tabla ULP_DET_PROCESOS via un record
    procedure ins(
        p_ULP_DET_PROCESOS ULP_DET_PROCESOS_TP.ULP_DET_PROCESOS_rt
    ) IS
        --* Constantes para identificar el programa
        k_programa CONSTANT FDC_DEFS.program_name_t := 'INS';
        k_modulo CONSTANT FDC_DEFS.module_name_t := k_package || '.' || k_programa;
        -- Variables, constantes, tipos y subtipos locales
    begin
        insert into ULP_DET_PROCESOS(
            PROC_ID
            ,SECUENCIA
            ,NOMBRE_MODULO
            ,TIPO_MENSAJE
            ,MENSAJE
            ,USUARIO_CLIENTE
            ,COLUMNA01
            ,COLUMNA02
            ,COLUMNA03
            ,AUD_CREADO_EL
            ,AUD_CREADO_POR
            ,AUD_MODIFICADO_EL
            ,AUD_MODIFICADO_POR
        )
        values (
            p_ULP_DET_PROCESOS.PROC_ID
            ,p_ULP_DET_PROCESOS.SECUENCIA
            ,p_ULP_DET_PROCESOS.NOMBRE_MODULO
            ,p_ULP_DET_PROCESOS.TIPO_MENSAJE
            ,p_ULP_DET_PROCESOS.MENSAJE
            ,p_ULP_DET_PROCESOS.USUARIO_CLIENTE
            ,p_ULP_DET_PROCESOS.COLUMNA01
            ,p_ULP_DET_PROCESOS.COLUMNA02
            ,p_ULP_DET_PROCESOS.COLUMNA03
            ,p_ULP_DET_PROCESOS.AUD_CREADO_EL
            ,p_ULP_DET_PROCESOS.AUD_CREADO_POR
            ,p_ULP_DET_PROCESOS.AUD_MODIFICADO_EL
            ,p_ULP_DET_PROCESOS.AUD_MODIFICADO_POR
        );

    exception
        when others then
            utl_error.informa (
                p_programa => k_modulo
            );
            raise;
    end ins;

    -- Inserta un registro en la tabla ULP_DET_PROCESOS via la Lista de Columnas
    procedure ins(
        p_proc_id IN ULP_DET_PROCESOS_TP.proc_id_t
        ,p_secuencia IN ULP_DET_PROCESOS_TP.secuencia_t
        ,p_nombre_modulo IN ULP_DET_PROCESOS_TP.nombre_modulo_t
        ,p_tipo_mensaje IN ULP_DET_PROCESOS_TP.tipo_mensaje_t
        ,p_mensaje IN ULP_DET_PROCESOS_TP.mensaje_t DEFAULT NULL
        ,p_usuario_cliente IN ULP_DET_PROCESOS_TP.usuario_cliente_t DEFAULT NULL
        ,p_columna01 IN ULP_DET_PROCESOS_TP.columna01_t DEFAULT NULL
        ,p_columna02 IN ULP_DET_PROCESOS_TP.columna02_t DEFAULT NULL
        ,p_columna03 IN ULP_DET_PROCESOS_TP.columna03_t DEFAULT NULL
        ,p_aud_creado_el IN ULP_DET_PROCESOS_TP.aud_creado_el_t DEFAULT sysdate
        ,p_aud_creado_por IN ULP_DET_PROCESOS_TP.aud_creado_por_t DEFAULT user
        ,p_aud_modificado_el IN ULP_DET_PROCESOS_TP.aud_modificado_el_t DEFAULT NULL
        ,p_aud_modificado_por IN ULP_DET_PROCESOS_TP.aud_modificado_por_t DEFAULT NULL
    ) IS
        --* Constantes para identificar el programa
        k_programa CONSTANT FDC_DEFS.program_name_t := 'INS';
        k_modulo CONSTANT FDC_DEFS.module_name_t := k_package || '.' || k_programa;
        -- Variables, constantes, tipos y subtipos locales
    begin
        insert into ULP_DET_PROCESOS(
            PROC_ID
            ,SECUENCIA
            ,NOMBRE_MODULO
            ,TIPO_MENSAJE
            ,MENSAJE
            ,USUARIO_CLIENTE
            ,COLUMNA01
            ,COLUMNA02
            ,COLUMNA03
            ,AUD_CREADO_EL
            ,AUD_CREADO_POR
            ,AUD_MODIFICADO_EL
            ,AUD_MODIFICADO_POR
        )
        values (
            p_PROC_ID
            ,p_SECUENCIA
            ,p_NOMBRE_MODULO
            ,p_TIPO_MENSAJE
            ,p_MENSAJE
            ,p_USUARIO_CLIENTE
            ,p_COLUMNA01
            ,p_COLUMNA02
            ,p_COLUMNA03
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
   -- la tabla ULP_DET_PROCESOS vía un record de colección de columnas
    procedure ins(
        p_regs ULP_DET_PROCESOS_TP.ULP_DET_PROCESOS_ct
    ) IS
        --* Constantes para identificar el programa
        k_programa CONSTANT FDC_DEFS.program_name_t := 'INS';
        k_modulo CONSTANT FDC_DEFS.module_name_t := k_package || '.' || k_programa;
        -- Variables, constantes, tipos y subtipos locales
        v_proc_id ULP_DET_PROCESOS_TP.PROC_ID_ct;
        v_secuencia ULP_DET_PROCESOS_TP.SECUENCIA_ct;
        v_nombre_modulo ULP_DET_PROCESOS_TP.NOMBRE_MODULO_ct;
        v_tipo_mensaje ULP_DET_PROCESOS_TP.TIPO_MENSAJE_ct;
        v_mensaje ULP_DET_PROCESOS_TP.MENSAJE_ct;
        v_usuario_cliente ULP_DET_PROCESOS_TP.USUARIO_CLIENTE_ct;
        v_columna01 ULP_DET_PROCESOS_TP.COLUMNA01_ct;
        v_columna02 ULP_DET_PROCESOS_TP.COLUMNA02_ct;
        v_columna03 ULP_DET_PROCESOS_TP.COLUMNA03_ct;
        v_aud_creado_el ULP_DET_PROCESOS_TP.AUD_CREADO_EL_ct;
        v_aud_creado_por ULP_DET_PROCESOS_TP.AUD_CREADO_POR_ct;
        v_aud_modificado_el ULP_DET_PROCESOS_TP.AUD_MODIFICADO_EL_ct;
        v_aud_modificado_por ULP_DET_PROCESOS_TP.AUD_MODIFICADO_POR_ct;
    begin
        FOR indx IN p_regs.FIRST .. p_regs.LAST LOOP
            v_PROC_ID(indx) := p_regs(indx).PROC_ID;
        end loop;
        FOR indx IN p_regs.FIRST .. p_regs.LAST LOOP
            v_SECUENCIA(indx) := p_regs(indx).SECUENCIA;
        end loop;
        FOR indx IN p_regs.FIRST .. p_regs.LAST LOOP
            v_NOMBRE_MODULO(indx) := p_regs(indx).NOMBRE_MODULO;
        end loop;
        FOR indx IN p_regs.FIRST .. p_regs.LAST LOOP
            v_TIPO_MENSAJE(indx) := p_regs(indx).TIPO_MENSAJE;
        end loop;
        FOR indx IN p_regs.FIRST .. p_regs.LAST LOOP
            v_MENSAJE(indx) := p_regs(indx).MENSAJE;
        end loop;
        FOR indx IN p_regs.FIRST .. p_regs.LAST LOOP
            v_USUARIO_CLIENTE(indx) := p_regs(indx).USUARIO_CLIENTE;
        end loop;
        FOR indx IN p_regs.FIRST .. p_regs.LAST LOOP
            v_COLUMNA01(indx) := p_regs(indx).COLUMNA01;
        end loop;
        FOR indx IN p_regs.FIRST .. p_regs.LAST LOOP
            v_COLUMNA02(indx) := p_regs(indx).COLUMNA02;
        end loop;
        FOR indx IN p_regs.FIRST .. p_regs.LAST LOOP
            v_COLUMNA03(indx) := p_regs(indx).COLUMNA03;
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
            insert into ULP_DET_PROCESOS(
                PROC_ID
                ,SECUENCIA
                ,NOMBRE_MODULO
                ,TIPO_MENSAJE
                ,MENSAJE
                ,USUARIO_CLIENTE
                ,COLUMNA01
                ,COLUMNA02
                ,COLUMNA03
                ,AUD_CREADO_EL
                ,AUD_CREADO_POR
                ,AUD_MODIFICADO_EL
                ,AUD_MODIFICADO_POR
            )
            values (
                v_PROC_ID(indx)
                ,v_SECUENCIA(indx)
                ,v_NOMBRE_MODULO(indx)
                ,v_TIPO_MENSAJE(indx)
                ,v_MENSAJE(indx)
                ,v_USUARIO_CLIENTE(indx)
                ,v_COLUMNA01(indx)
                ,v_COLUMNA02(indx)
                ,v_COLUMNA03(indx)
                ,v_AUD_CREADO_EL(indx)
                ,v_AUD_CREADO_POR(indx)
                ,v_AUD_MODIFICADO_EL(indx)
                ,v_AUD_MODIFICADO_POR(indx)
            );

            v_PROC_ID.DELETE;
            v_SECUENCIA.DELETE;
            v_NOMBRE_MODULO.DELETE;
            v_TIPO_MENSAJE.DELETE;
            v_MENSAJE.DELETE;
            v_USUARIO_CLIENTE.DELETE;
            v_COLUMNA01.DELETE;
            v_COLUMNA02.DELETE;
            v_COLUMNA03.DELETE;
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
   -- la tabla ULP_DET_PROCESOS vía colecciones de columnas
    procedure ins(
        p_proc_id IN ULP_DET_PROCESOS_TP.proc_id_ct
        ,p_secuencia IN ULP_DET_PROCESOS_TP.secuencia_ct
        ,p_nombre_modulo IN ULP_DET_PROCESOS_TP.nombre_modulo_ct
        ,p_tipo_mensaje IN ULP_DET_PROCESOS_TP.tipo_mensaje_ct
        ,p_mensaje IN ULP_DET_PROCESOS_TP.mensaje_ct
        ,p_usuario_cliente IN ULP_DET_PROCESOS_TP.usuario_cliente_ct
        ,p_columna01 IN ULP_DET_PROCESOS_TP.columna01_ct
        ,p_columna02 IN ULP_DET_PROCESOS_TP.columna02_ct
        ,p_columna03 IN ULP_DET_PROCESOS_TP.columna03_ct
        ,p_aud_creado_el IN ULP_DET_PROCESOS_TP.aud_creado_el_ct
        ,p_aud_creado_por IN ULP_DET_PROCESOS_TP.aud_creado_por_ct
        ,p_aud_modificado_el IN ULP_DET_PROCESOS_TP.aud_modificado_el_ct
        ,p_aud_modificado_por IN ULP_DET_PROCESOS_TP.aud_modificado_por_ct
    ) IS
        --* Constantes para identificar el programa
        k_programa CONSTANT FDC_DEFS.program_name_t := 'INS';
        k_modulo CONSTANT FDC_DEFS.module_name_t := k_package || '.' || k_programa;
        -- Variables, constantes, tipos y subtipos locales
    begin
        FORALL indx IN p_PROC_ID.FIRST .. p_PROC_ID.LAST
            insert into ULP_DET_PROCESOS(
                PROC_ID
                ,SECUENCIA
                ,NOMBRE_MODULO
                ,TIPO_MENSAJE
                ,MENSAJE
                ,USUARIO_CLIENTE
                ,COLUMNA01
                ,COLUMNA02
                ,COLUMNA03
                ,AUD_CREADO_EL
                ,AUD_CREADO_POR
                ,AUD_MODIFICADO_EL
                ,AUD_MODIFICADO_POR
            )
            values (
                p_PROC_ID(indx)
                ,p_SECUENCIA(indx)
                ,p_NOMBRE_MODULO(indx)
                ,p_TIPO_MENSAJE(indx)
                ,p_MENSAJE(indx)
                ,p_USUARIO_CLIENTE(indx)
                ,p_COLUMNA01(indx)
                ,p_COLUMNA02(indx)
                ,p_COLUMNA03(indx)
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

    -- Actualiza un registro de la tabla ULP_DET_PROCESOS en función
   -- de la constraint DEPR_PK
    procedure upd_DEPR_PK(
        p_proc_id IN ULP_DET_PROCESOS_TP.proc_id_t
        ,p_secuencia IN ULP_DET_PROCESOS_TP.secuencia_t
        ,p_ULP_DET_PROCESOS IN ULP_DET_PROCESOS_TP.ULP_DET_PROCESOS_rt
    ) is
        --* Constantes para identificar el programa
        k_programa CONSTANT FDC_DEFS.program_name_t := 'UPD_DEPR_PK';
        k_modulo CONSTANT FDC_DEFS.module_name_t := k_package || '.' || k_programa;
        -- Variables, constantes, tipos y subtipos locales
    begin
        update ULP_DET_PROCESOS
            set
                nombre_modulo = p_ULP_DET_PROCESOS.nombre_modulo
                ,tipo_mensaje = p_ULP_DET_PROCESOS.tipo_mensaje
                ,mensaje = p_ULP_DET_PROCESOS.mensaje
                ,usuario_cliente = p_ULP_DET_PROCESOS.usuario_cliente
                ,columna01 = p_ULP_DET_PROCESOS.columna01
                ,columna02 = p_ULP_DET_PROCESOS.columna02
                ,columna03 = p_ULP_DET_PROCESOS.columna03
                ,aud_creado_el = p_ULP_DET_PROCESOS.aud_creado_el
                ,aud_creado_por = p_ULP_DET_PROCESOS.aud_creado_por
                ,aud_modificado_el = p_ULP_DET_PROCESOS.aud_modificado_el
                ,aud_modificado_por = p_ULP_DET_PROCESOS.aud_modificado_por
        where
            PROC_ID = p_proc_id
            and   SECUENCIA = p_secuencia;

    exception
        when others then
            utl_error.informa (
                p_programa => k_modulo
            );
            raise;
    end upd_DEPR_PK;


    -- Actualiza una columna de la tabla ULP_DET_PROCESOS
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
        EXECUTE IMMEDIATE 'update ULP_DET_PROCESOS '
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

    -- Actualiza una columna de la tabla ULP_DET_PROCESOS
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
        EXECUTE IMMEDIATE 'update ULP_DET_PROCESOS '
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

    -- Actualiza una columna de la tabla ULP_DET_PROCESOS
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
        EXECUTE IMMEDIATE 'update ULP_DET_PROCESOS '
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
   -- ULP_DET_PROCESOS en función de la
   -- constraint DEPR_PK
    procedure upd_DEPR_PK(
        p_proc_id IN ULP_DET_PROCESOS_TP.proc_id_t
        ,p_secuencia IN ULP_DET_PROCESOS_TP.secuencia_t ,
        p_nombre_modulo IN ULP_DET_PROCESOS_TP.nombre_modulo_t DEFAULT set_as_uninvoked_parameter.nlvc2('P3')
        ,p_tipo_mensaje IN ULP_DET_PROCESOS_TP.tipo_mensaje_t DEFAULT set_as_uninvoked_parameter.nlvc2('P4')
        ,p_mensaje IN ULP_DET_PROCESOS_TP.mensaje_t DEFAULT set_as_uninvoked_parameter.nlvc2('P5')
        ,p_usuario_cliente IN ULP_DET_PROCESOS_TP.usuario_cliente_t DEFAULT set_as_uninvoked_parameter.nlvc2('P6')
        ,p_columna01 IN ULP_DET_PROCESOS_TP.columna01_t DEFAULT set_as_uninvoked_parameter.nlvc2('P7')
        ,p_columna02 IN ULP_DET_PROCESOS_TP.columna02_t DEFAULT set_as_uninvoked_parameter.nlvc2('P8')
        ,p_columna03 IN ULP_DET_PROCESOS_TP.columna03_t DEFAULT set_as_uninvoked_parameter.nlvc2('P9')
        ,p_aud_creado_el IN ULP_DET_PROCESOS_TP.aud_creado_el_t DEFAULT set_as_uninvoked_parameter.nldate('P10')
        ,p_aud_creado_por IN ULP_DET_PROCESOS_TP.aud_creado_por_t DEFAULT set_as_uninvoked_parameter.nlvc2('P11')
        ,p_aud_modificado_el IN ULP_DET_PROCESOS_TP.aud_modificado_el_t DEFAULT set_as_uninvoked_parameter.nldate('P12')
        ,p_aud_modificado_por IN ULP_DET_PROCESOS_TP.aud_modificado_por_t DEFAULT set_as_uninvoked_parameter.nlvc2('P13')
    ) IS
        --* Constantes para identificar el programa
        k_programa CONSTANT FDC_DEFS.program_name_t := 'UPD_DEPR_PK';
        k_modulo CONSTANT FDC_DEFS.module_name_t := k_package || '.' || k_programa;
        -- Variables, constantes, tipos y subtipos locales
         v_client_info   VARCHAR2 (2048);
    begin
        invocation_params_context.read_client_info (v_client_info);
        update ULP_DET_PROCESOS
            set
                nombre_modulo = CASE WHEN INSTR(v_client_info, '#P3#') > 0 then nombre_modulo ELSE p_nombre_modulo END
                ,tipo_mensaje = CASE WHEN INSTR(v_client_info, '#P4#') > 0 then tipo_mensaje ELSE p_tipo_mensaje END
                ,mensaje = CASE WHEN INSTR(v_client_info, '#P5#') > 0 then mensaje ELSE p_mensaje END
                ,usuario_cliente = CASE WHEN INSTR(v_client_info, '#P6#') > 0 then usuario_cliente ELSE p_usuario_cliente END
                ,columna01 = CASE WHEN INSTR(v_client_info, '#P7#') > 0 then columna01 ELSE p_columna01 END
                ,columna02 = CASE WHEN INSTR(v_client_info, '#P8#') > 0 then columna02 ELSE p_columna02 END
                ,columna03 = CASE WHEN INSTR(v_client_info, '#P9#') > 0 then columna03 ELSE p_columna03 END
                ,aud_creado_el = CASE WHEN INSTR(v_client_info, '#P10#') > 0 then aud_creado_el ELSE p_aud_creado_el END
                ,aud_creado_por = CASE WHEN INSTR(v_client_info, '#P11#') > 0 then aud_creado_por ELSE p_aud_creado_por END
                ,aud_modificado_el = CASE WHEN INSTR(v_client_info, '#P12#') > 0 then aud_modificado_el ELSE p_aud_modificado_el END
                ,aud_modificado_por = CASE WHEN INSTR(v_client_info, '#P13#') > 0 then aud_modificado_por ELSE p_aud_modificado_por END
        where
            PROC_ID = p_proc_id
            and   SECUENCIA = p_secuencia;

        invocation_params_context.set_client_info (NULL);
    exception
        when others then
            utl_error.informa (
                p_programa => k_modulo
            );
            raise;
    end upd_DEPR_PK;


    -- Borra registro(s) de la tabla ULP_DET_PROCESOS en
   -- función de la constraint DEPR_PK
    function del_DEPR_PK(
        p_proc_id IN ULP_DET_PROCESOS_TP.proc_id_t
        ,p_secuencia IN ULP_DET_PROCESOS_TP.secuencia_t
    ) RETURN SIMPLE_INTEGER IS
        --* Constantes para identificar el programa
        k_programa CONSTANT FDC_DEFS.program_name_t := 'DEL_DEPR_PK';
        k_modulo CONSTANT FDC_DEFS.module_name_t := k_package || '.' || k_programa;
        -- Variables, constantes, tipos y subtipos locales
        v_num_regs SIMPLE_INTEGER := 0;
    begin
        delete ULP_DET_PROCESOS
        where
            PROC_ID = p_proc_id
            and   SECUENCIA = p_secuencia;

        v_num_regs := SQL%ROWCOUNT;
        RETURN v_num_regs;
    exception
        when others then
            utl_error.informa (
                p_programa => k_modulo
            );
            raise;
    end del_DEPR_PK;



    -- Borra registro(s) de la tabla ULP_DET_PROCESOS en
   -- función de la constraint DEPR_PROC_FK
    function del_DEPR_PROC_FK(
        p_proc_id IN ULP_DET_PROCESOS_TP.proc_id_t
    ) RETURN SIMPLE_INTEGER IS
        --* Constantes para identificar el programa
        k_programa CONSTANT FDC_DEFS.program_name_t := 'DEL_DEPR_PROC_FK';
        k_modulo CONSTANT FDC_DEFS.module_name_t := k_package || '.' || k_programa;
        -- Variables, constantes, tipos y subtipos locales
        v_num_regs SIMPLE_INTEGER := 0;
    begin
        delete ULP_DET_PROCESOS
        where
            PROC_ID = p_proc_id;

        v_num_regs := SQL%ROWCOUNT;
        RETURN v_num_regs;
    exception
        when others then
            utl_error.informa (
                p_programa => k_modulo
            );
            raise;
    end del_DEPR_PROC_FK;


    -- Borra registro(s) de la tabla ULP_DET_PROCESOS en
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
            EXECUTE IMMEDIATE 'delete ULP_DET_PROCESOS';
        else
            EXECUTE IMMEDIATE 'delete ULP_DET_PROCESOS where ' || p_where;
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

    -- Borra registro(s) de la tabla ULP_DET_PROCESOS en
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
        EXECUTE IMMEDIATE 'delete ULP_DET_PROCESOS' ||
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

    -- Borra registro(s) de la tabla ULP_DET_PROCESOS en
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
        EXECUTE IMMEDIATE 'delete ULP_DET_PROCESOS' ||
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

    -- Borra registro(s) de la tabla ULP_DET_PROCESOS en
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
        EXECUTE IMMEDIATE 'delete ULP_DET_PROCESOS' ||
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


end ULP_DET_PROCESOS_CP;
/
