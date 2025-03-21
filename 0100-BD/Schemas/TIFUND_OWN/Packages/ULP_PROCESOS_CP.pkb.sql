CREATE OR REPLACE PACKAGE BODY "TIFUND_OWN"."ULP_PROCESOS_CP"
--@!!Start
--@!! Generado por #APPVER#:GECO V1.0 winter 2024
--@!! Timestamp #TMSTMP#:20241020223229
--@!! Autor #AUTHOR#:Marcelo Herrera Tejada
--@!! Tabla #TSHORT#:PROC
--@!! No modifique este código
--@!!End
/*******************************************************************************
* Empresa:    Explora Information Technologies
* Proyecto:   Generador de APIs de tablas
*             GAT
* Nombre:     ULP_PROCESOS_CP
* Proposito:  Package que implementa las DML o Changes sobre la tabla
* Tabla:      ULP_PROCESOS
* Descipción de la tabla:
* Tabla maestra para almacenar información de Procesos
*
* Cuando      Quien        Que
* ----------- ------------ -----------------------------------------------------
* 18-Oct-2024 MHERRERA     Creación
*******************************************************************************/
 is

    -- Inserta un registro en la tabla ULP_PROCESOS via un record
    procedure ins(
        p_ULP_PROCESOS ULP_PROCESOS_TP.ULP_PROCESOS_rt
    ) IS
        --* Constantes para identificar el programa
        k_programa CONSTANT FDC_DEFS.program_name_t := 'INS';
        k_modulo CONSTANT FDC_DEFS.module_name_t := k_package || '.' || k_programa;
        -- Variables, constantes, tipos y subtipos locales
    begin
        insert into ULP_PROCESOS(
            ID
            ,PROC_ID
            ,SIST_CODIGO
            ,NOMBRE_PROCESO
            ,FECHA_INICIO
            ,FECHA_TERMINO
            ,COMENTARIO
            ,ESTADO
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
            p_ULP_PROCESOS.ID
            ,p_ULP_PROCESOS.PROC_ID
            ,p_ULP_PROCESOS.SIST_CODIGO
            ,p_ULP_PROCESOS.NOMBRE_PROCESO
            ,p_ULP_PROCESOS.FECHA_INICIO
            ,p_ULP_PROCESOS.FECHA_TERMINO
            ,p_ULP_PROCESOS.COMENTARIO
            ,p_ULP_PROCESOS.ESTADO
            ,p_ULP_PROCESOS.USUARIO_CLIENTE
            ,p_ULP_PROCESOS.COLUMNA01
            ,p_ULP_PROCESOS.COLUMNA02
            ,p_ULP_PROCESOS.COLUMNA03
            ,p_ULP_PROCESOS.AUD_CREADO_EL
            ,p_ULP_PROCESOS.AUD_CREADO_POR
            ,p_ULP_PROCESOS.AUD_MODIFICADO_EL
            ,p_ULP_PROCESOS.AUD_MODIFICADO_POR
        );

    exception
        when others then
            utl_error.informa (
                p_programa => k_modulo
            );
            raise;
    end ins;

    -- Inserta un registro en la tabla ULP_PROCESOS via la Lista de Columnas
    procedure ins(
        p_id IN ULP_PROCESOS_TP.id_t
        ,p_proc_id IN ULP_PROCESOS_TP.proc_id_t DEFAULT NULL
        ,p_SIST_CODIGO IN ULP_PROCESOS_TP.SIST_CODIGO_t
        ,p_nombre_proceso IN ULP_PROCESOS_TP.nombre_proceso_t
        ,p_fecha_inicio IN ULP_PROCESOS_TP.fecha_inicio_t DEFAULT sysdate
        ,p_fecha_termino IN ULP_PROCESOS_TP.fecha_termino_t DEFAULT NULL
        ,p_comentario IN ULP_PROCESOS_TP.comentario_t DEFAULT NULL
        ,p_estado IN ULP_PROCESOS_TP.estado_t DEFAULT 'AB'
        ,p_usuario_cliente IN ULP_PROCESOS_TP.usuario_cliente_t DEFAULT NULL
        ,p_columna01 IN ULP_PROCESOS_TP.columna01_t DEFAULT NULL
        ,p_columna02 IN ULP_PROCESOS_TP.columna02_t DEFAULT NULL
        ,p_columna03 IN ULP_PROCESOS_TP.columna03_t DEFAULT NULL
        ,p_aud_creado_el IN ULP_PROCESOS_TP.aud_creado_el_t DEFAULT sysdate
        ,p_aud_creado_por IN ULP_PROCESOS_TP.aud_creado_por_t DEFAULT user
        ,p_aud_modificado_el IN ULP_PROCESOS_TP.aud_modificado_el_t DEFAULT NULL
        ,p_aud_modificado_por IN ULP_PROCESOS_TP.aud_modificado_por_t DEFAULT NULL
    ) IS
        --* Constantes para identificar el programa
        k_programa CONSTANT FDC_DEFS.program_name_t := 'INS';
        k_modulo CONSTANT FDC_DEFS.module_name_t := k_package || '.' || k_programa;
        -- Variables, constantes, tipos y subtipos locales
    begin
        insert into ULP_PROCESOS(
            ID
            ,PROC_ID
            ,SIST_CODIGO
            ,NOMBRE_PROCESO
            ,FECHA_INICIO
            ,FECHA_TERMINO
            ,COMENTARIO
            ,ESTADO
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
            p_ID
            ,p_PROC_ID
            ,p_SIST_CODIGO
            ,p_NOMBRE_PROCESO
            ,p_FECHA_INICIO
            ,p_FECHA_TERMINO
            ,p_COMENTARIO
            ,p_ESTADO
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
   -- la tabla ULP_PROCESOS vía un record de colección de columnas
    procedure ins(
        p_regs ULP_PROCESOS_TP.ULP_PROCESOS_ct
    ) IS
        --* Constantes para identificar el programa
        k_programa CONSTANT FDC_DEFS.program_name_t := 'INS';
        k_modulo CONSTANT FDC_DEFS.module_name_t := k_package || '.' || k_programa;
        -- Variables, constantes, tipos y subtipos locales
        v_id ULP_PROCESOS_TP.ID_ct;
        v_proc_id ULP_PROCESOS_TP.PROC_ID_ct;
        v_SIST_CODIGO ULP_PROCESOS_TP.SIST_CODIGO_ct;
        v_nombre_proceso ULP_PROCESOS_TP.NOMBRE_PROCESO_ct;
        v_fecha_inicio ULP_PROCESOS_TP.FECHA_INICIO_ct;
        v_fecha_termino ULP_PROCESOS_TP.FECHA_TERMINO_ct;
        v_comentario ULP_PROCESOS_TP.COMENTARIO_ct;
        v_estado ULP_PROCESOS_TP.ESTADO_ct;
        v_usuario_cliente ULP_PROCESOS_TP.USUARIO_CLIENTE_ct;
        v_columna01 ULP_PROCESOS_TP.COLUMNA01_ct;
        v_columna02 ULP_PROCESOS_TP.COLUMNA02_ct;
        v_columna03 ULP_PROCESOS_TP.COLUMNA03_ct;
        v_aud_creado_el ULP_PROCESOS_TP.AUD_CREADO_EL_ct;
        v_aud_creado_por ULP_PROCESOS_TP.AUD_CREADO_POR_ct;
        v_aud_modificado_el ULP_PROCESOS_TP.AUD_MODIFICADO_EL_ct;
        v_aud_modificado_por ULP_PROCESOS_TP.AUD_MODIFICADO_POR_ct;
    begin
        FOR indx IN p_regs.FIRST .. p_regs.LAST LOOP
            v_ID(indx) := p_regs(indx).ID;
        end loop;
        FOR indx IN p_regs.FIRST .. p_regs.LAST LOOP
            v_PROC_ID(indx) := p_regs(indx).PROC_ID;
        end loop;
        FOR indx IN p_regs.FIRST .. p_regs.LAST LOOP
            v_SIST_CODIGO(indx) := p_regs(indx).SIST_CODIGO;
        end loop;
        FOR indx IN p_regs.FIRST .. p_regs.LAST LOOP
            v_NOMBRE_PROCESO(indx) := p_regs(indx).NOMBRE_PROCESO;
        end loop;
        FOR indx IN p_regs.FIRST .. p_regs.LAST LOOP
            v_FECHA_INICIO(indx) := p_regs(indx).FECHA_INICIO;
        end loop;
        FOR indx IN p_regs.FIRST .. p_regs.LAST LOOP
            v_FECHA_TERMINO(indx) := p_regs(indx).FECHA_TERMINO;
        end loop;
        FOR indx IN p_regs.FIRST .. p_regs.LAST LOOP
            v_COMENTARIO(indx) := p_regs(indx).COMENTARIO;
        end loop;
        FOR indx IN p_regs.FIRST .. p_regs.LAST LOOP
            v_ESTADO(indx) := p_regs(indx).ESTADO;
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
            insert into ULP_PROCESOS(
                ID
                ,PROC_ID
                ,SIST_CODIGO
                ,NOMBRE_PROCESO
                ,FECHA_INICIO
                ,FECHA_TERMINO
                ,COMENTARIO
                ,ESTADO
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
                v_ID(indx)
                ,v_PROC_ID(indx)
                ,v_SIST_CODIGO(indx)
                ,v_NOMBRE_PROCESO(indx)
                ,v_FECHA_INICIO(indx)
                ,v_FECHA_TERMINO(indx)
                ,v_COMENTARIO(indx)
                ,v_ESTADO(indx)
                ,v_USUARIO_CLIENTE(indx)
                ,v_COLUMNA01(indx)
                ,v_COLUMNA02(indx)
                ,v_COLUMNA03(indx)
                ,v_AUD_CREADO_EL(indx)
                ,v_AUD_CREADO_POR(indx)
                ,v_AUD_MODIFICADO_EL(indx)
                ,v_AUD_MODIFICADO_POR(indx)
            );

            v_ID.DELETE;
            v_PROC_ID.DELETE;
            v_SIST_CODIGO.DELETE;
            v_NOMBRE_PROCESO.DELETE;
            v_FECHA_INICIO.DELETE;
            v_FECHA_TERMINO.DELETE;
            v_COMENTARIO.DELETE;
            v_ESTADO.DELETE;
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
   -- la tabla ULP_PROCESOS vía colecciones de columnas
    procedure ins(
        p_id IN ULP_PROCESOS_TP.id_ct
        ,p_proc_id IN ULP_PROCESOS_TP.proc_id_ct
        ,p_SIST_CODIGO IN ULP_PROCESOS_TP.SIST_CODIGO_ct
        ,p_nombre_proceso IN ULP_PROCESOS_TP.nombre_proceso_ct
        ,p_fecha_inicio IN ULP_PROCESOS_TP.fecha_inicio_ct
        ,p_fecha_termino IN ULP_PROCESOS_TP.fecha_termino_ct
        ,p_comentario IN ULP_PROCESOS_TP.comentario_ct
        ,p_estado IN ULP_PROCESOS_TP.estado_ct
        ,p_usuario_cliente IN ULP_PROCESOS_TP.usuario_cliente_ct
        ,p_columna01 IN ULP_PROCESOS_TP.columna01_ct
        ,p_columna02 IN ULP_PROCESOS_TP.columna02_ct
        ,p_columna03 IN ULP_PROCESOS_TP.columna03_ct
        ,p_aud_creado_el IN ULP_PROCESOS_TP.aud_creado_el_ct
        ,p_aud_creado_por IN ULP_PROCESOS_TP.aud_creado_por_ct
        ,p_aud_modificado_el IN ULP_PROCESOS_TP.aud_modificado_el_ct
        ,p_aud_modificado_por IN ULP_PROCESOS_TP.aud_modificado_por_ct
    ) IS
        --* Constantes para identificar el programa
        k_programa CONSTANT FDC_DEFS.program_name_t := 'INS';
        k_modulo CONSTANT FDC_DEFS.module_name_t := k_package || '.' || k_programa;
        -- Variables, constantes, tipos y subtipos locales
    begin
        FORALL indx IN p_ID.FIRST .. p_ID.LAST
            insert into ULP_PROCESOS(
                ID
                ,PROC_ID
                ,SIST_CODIGO
                ,NOMBRE_PROCESO
                ,FECHA_INICIO
                ,FECHA_TERMINO
                ,COMENTARIO
                ,ESTADO
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
                p_ID(indx)
                ,p_PROC_ID(indx)
                ,p_SIST_CODIGO(indx)
                ,p_NOMBRE_PROCESO(indx)
                ,p_FECHA_INICIO(indx)
                ,p_FECHA_TERMINO(indx)
                ,p_COMENTARIO(indx)
                ,p_ESTADO(indx)
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

    -- Actualiza un registro de la tabla ULP_PROCESOS en función
   -- de la constraint PROC_PK
    procedure upd_PROC_PK(
        p_id IN ULP_PROCESOS_TP.id_t
        ,p_ULP_PROCESOS IN ULP_PROCESOS_TP.ULP_PROCESOS_rt
    ) is
        --* Constantes para identificar el programa
        k_programa CONSTANT FDC_DEFS.program_name_t := 'UPD_PROC_PK';
        k_modulo CONSTANT FDC_DEFS.module_name_t := k_package || '.' || k_programa;
        -- Variables, constantes, tipos y subtipos locales
    begin
        update ULP_PROCESOS
            set
                proc_id = p_ULP_PROCESOS.proc_id
                ,SIST_CODIGO = p_ULP_PROCESOS.SIST_CODIGO
                ,nombre_proceso = p_ULP_PROCESOS.nombre_proceso
                ,fecha_inicio = p_ULP_PROCESOS.fecha_inicio
                ,fecha_termino = p_ULP_PROCESOS.fecha_termino
                ,comentario = p_ULP_PROCESOS.comentario
                ,estado = p_ULP_PROCESOS.estado
                ,usuario_cliente = p_ULP_PROCESOS.usuario_cliente
                ,columna01 = p_ULP_PROCESOS.columna01
                ,columna02 = p_ULP_PROCESOS.columna02
                ,columna03 = p_ULP_PROCESOS.columna03
                ,aud_creado_el = p_ULP_PROCESOS.aud_creado_el
                ,aud_creado_por = p_ULP_PROCESOS.aud_creado_por
                ,aud_modificado_el = p_ULP_PROCESOS.aud_modificado_el
                ,aud_modificado_por = p_ULP_PROCESOS.aud_modificado_por
        where
            ID = p_id;

    exception
        when others then
            utl_error.informa (
                p_programa => k_modulo
            );
            raise;
    end upd_PROC_PK;


    -- Actualiza una columna de la tabla ULP_PROCESOS
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
        EXECUTE IMMEDIATE 'update ULP_PROCESOS '
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

    -- Actualiza una columna de la tabla ULP_PROCESOS
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
        EXECUTE IMMEDIATE 'update ULP_PROCESOS '
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

    -- Actualiza una columna de la tabla ULP_PROCESOS
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
        EXECUTE IMMEDIATE 'update ULP_PROCESOS '
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
   -- ULP_PROCESOS en función de la
   -- constraint PROC_PK
    procedure upd_PROC_PK(
        p_id IN ULP_PROCESOS_TP.id_t ,
        p_proc_id IN ULP_PROCESOS_TP.proc_id_t DEFAULT set_as_uninvoked_parameter.nlnum('P2')
        ,p_SIST_CODIGO IN ULP_PROCESOS_TP.SIST_CODIGO_t DEFAULT set_as_uninvoked_parameter.nlvc2('P3')
        ,p_nombre_proceso IN ULP_PROCESOS_TP.nombre_proceso_t DEFAULT set_as_uninvoked_parameter.nlvc2('P4')
        ,p_fecha_inicio IN ULP_PROCESOS_TP.fecha_inicio_t DEFAULT set_as_uninvoked_parameter.nldate('P5')
        ,p_fecha_termino IN ULP_PROCESOS_TP.fecha_termino_t DEFAULT set_as_uninvoked_parameter.nldate('P6')
        ,p_comentario IN ULP_PROCESOS_TP.comentario_t DEFAULT set_as_uninvoked_parameter.nlvc2('P7')
        ,p_estado IN ULP_PROCESOS_TP.estado_t DEFAULT set_as_uninvoked_parameter.nlvc2('P8')
        ,p_usuario_cliente IN ULP_PROCESOS_TP.usuario_cliente_t DEFAULT set_as_uninvoked_parameter.nlvc2('P9')
        ,p_columna01 IN ULP_PROCESOS_TP.columna01_t DEFAULT set_as_uninvoked_parameter.nlvc2('P10')
        ,p_columna02 IN ULP_PROCESOS_TP.columna02_t DEFAULT set_as_uninvoked_parameter.nlvc2('P11')
        ,p_columna03 IN ULP_PROCESOS_TP.columna03_t DEFAULT set_as_uninvoked_parameter.nlvc2('P12')
        ,p_aud_creado_el IN ULP_PROCESOS_TP.aud_creado_el_t DEFAULT set_as_uninvoked_parameter.nldate('P13')
        ,p_aud_creado_por IN ULP_PROCESOS_TP.aud_creado_por_t DEFAULT set_as_uninvoked_parameter.nlvc2('P14')
        ,p_aud_modificado_el IN ULP_PROCESOS_TP.aud_modificado_el_t DEFAULT set_as_uninvoked_parameter.nldate('P15')
        ,p_aud_modificado_por IN ULP_PROCESOS_TP.aud_modificado_por_t DEFAULT set_as_uninvoked_parameter.nlvc2('P16')
    ) IS
        --* Constantes para identificar el programa
        k_programa CONSTANT FDC_DEFS.program_name_t := 'UPD_PROC_PK';
        k_modulo CONSTANT FDC_DEFS.module_name_t := k_package || '.' || k_programa;
        -- Variables, constantes, tipos y subtipos locales
         v_client_info   VARCHAR2 (2048);
    begin
        invocation_params_context.read_client_info (v_client_info);
        update ULP_PROCESOS
            set
                proc_id = CASE WHEN INSTR(v_client_info, '#P2#') > 0 then proc_id ELSE p_proc_id END
                ,SIST_CODIGO = CASE WHEN INSTR(v_client_info, '#P3#') > 0 then SIST_CODIGO ELSE p_SIST_CODIGO END
                ,nombre_proceso = CASE WHEN INSTR(v_client_info, '#P4#') > 0 then nombre_proceso ELSE p_nombre_proceso END
                ,fecha_inicio = CASE WHEN INSTR(v_client_info, '#P5#') > 0 then fecha_inicio ELSE p_fecha_inicio END
                ,fecha_termino = CASE WHEN INSTR(v_client_info, '#P6#') > 0 then fecha_termino ELSE p_fecha_termino END
                ,comentario = CASE WHEN INSTR(v_client_info, '#P7#') > 0 then comentario ELSE p_comentario END
                ,estado = CASE WHEN INSTR(v_client_info, '#P8#') > 0 then estado ELSE p_estado END
                ,usuario_cliente = CASE WHEN INSTR(v_client_info, '#P9#') > 0 then usuario_cliente ELSE p_usuario_cliente END
                ,columna01 = CASE WHEN INSTR(v_client_info, '#P10#') > 0 then columna01 ELSE p_columna01 END
                ,columna02 = CASE WHEN INSTR(v_client_info, '#P11#') > 0 then columna02 ELSE p_columna02 END
                ,columna03 = CASE WHEN INSTR(v_client_info, '#P12#') > 0 then columna03 ELSE p_columna03 END
                ,aud_creado_el = CASE WHEN INSTR(v_client_info, '#P13#') > 0 then aud_creado_el ELSE p_aud_creado_el END
                ,aud_creado_por = CASE WHEN INSTR(v_client_info, '#P14#') > 0 then aud_creado_por ELSE p_aud_creado_por END
                ,aud_modificado_el = CASE WHEN INSTR(v_client_info, '#P15#') > 0 then aud_modificado_el ELSE p_aud_modificado_el END
                ,aud_modificado_por = CASE WHEN INSTR(v_client_info, '#P16#') > 0 then aud_modificado_por ELSE p_aud_modificado_por END
        where
            ID = p_id;

        invocation_params_context.set_client_info (NULL);
    exception
        when others then
            utl_error.informa (
                p_programa => k_modulo
            );
            raise;
    end upd_PROC_PK;


    -- Borra registro(s) de la tabla ULP_PROCESOS en
   -- función de la constraint PROC_PK
    function del_PROC_PK(
        p_id IN ULP_PROCESOS_TP.id_t
    ) RETURN SIMPLE_INTEGER IS
        --* Constantes para identificar el programa
        k_programa CONSTANT FDC_DEFS.program_name_t := 'DEL_PROC_PK';
        k_modulo CONSTANT FDC_DEFS.module_name_t := k_package || '.' || k_programa;
        -- Variables, constantes, tipos y subtipos locales
        v_num_regs SIMPLE_INTEGER := 0;
    begin
        delete ULP_PROCESOS
        where
            ID = p_id;

        v_num_regs := SQL%ROWCOUNT;
        RETURN v_num_regs;
    exception
        when others then
            utl_error.informa (
                p_programa => k_modulo
            );
            raise;
    end del_PROC_PK;



    -- Borra registro(s) de la tabla ULP_PROCESOS en
   -- función de la constraint PROC_PROC_FK
    function del_PROC_PROC_FK(
        p_proc_id IN ULP_PROCESOS_TP.proc_id_t
    ) RETURN SIMPLE_INTEGER IS
        --* Constantes para identificar el programa
        k_programa CONSTANT FDC_DEFS.program_name_t := 'DEL_PROC_PROC_FK';
        k_modulo CONSTANT FDC_DEFS.module_name_t := k_package || '.' || k_programa;
        -- Variables, constantes, tipos y subtipos locales
        v_num_regs SIMPLE_INTEGER := 0;
    begin
        delete ULP_PROCESOS
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
    end del_PROC_PROC_FK;

    -- Borra registro(s) de la tabla ULP_PROCESOS en
   -- función de la constraint ULP_PROCESOS_GRL_SISTEMAS_FK
    function del_ULP_PROCESOS_GRL_SISTEMAS_(
        p_SIST_CODIGO IN ULP_PROCESOS_TP.SIST_CODIGO_t
    ) RETURN SIMPLE_INTEGER IS
        --* Constantes para identificar el programa
        k_programa CONSTANT FDC_DEFS.program_name_t := 'DEL_ULP_PROCESOS_GRL_SISTEMAS_';
        k_modulo CONSTANT FDC_DEFS.module_name_t := k_package || '.' || k_programa;
        -- Variables, constantes, tipos y subtipos locales
        v_num_regs SIMPLE_INTEGER := 0;
    begin
        delete ULP_PROCESOS
        where
            SIST_CODIGO = p_SIST_CODIGO;

        v_num_regs := SQL%ROWCOUNT;
        RETURN v_num_regs;
    exception
        when others then
            utl_error.informa (
                p_programa => k_modulo
            );
            raise;
    end del_ULP_PROCESOS_GRL_SISTEMAS_;


    -- Borra registro(s) de la tabla ULP_PROCESOS en
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
            EXECUTE IMMEDIATE 'delete ULP_PROCESOS';
        else
            EXECUTE IMMEDIATE 'delete ULP_PROCESOS where ' || p_where;
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

    -- Borra registro(s) de la tabla ULP_PROCESOS en
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
        EXECUTE IMMEDIATE 'delete ULP_PROCESOS' ||
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

    -- Borra registro(s) de la tabla ULP_PROCESOS en
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
        EXECUTE IMMEDIATE 'delete ULP_PROCESOS' ||
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

    -- Borra registro(s) de la tabla ULP_PROCESOS en
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
        EXECUTE IMMEDIATE 'delete ULP_PROCESOS' ||
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


end ULP_PROCESOS_CP;
/
