CREATE OR REPLACE PACKAGE "TIFUND_OWN"."FDC_DEFS" 
/*
* Proyecto:   FunDaCiones proyectos PL/SQL
* Objetivo:   Package de definiciones generals para proyectos PL/SQL
* 
* Historia    Quien    Descripción
* ----------- -------- ---------------------------------------------------------
* 29-Abr-2009 mherrera Creación
* 15-Jul-2024 mherrera Mueve este package desde MPL a FDC_OWN
* 15-Jul-2024 mherrera Include conditional compilation for DBMS_DB_VERSION   
*/
IS
$IF DBMS_DB_VERSION.ver_le_11_2 $THEN

        k_max_identifier_length   CONSTANT NUMBER (4) := 30;
        SUBTYPE package_name_t IS VARCHAR2 (30);
        SUBTYPE program_name_t IS VARCHAR2 (30);
        -- K_MAX_MODULE_NAME_LEN ::= package_name || '.' || program_name
        k_max_module_name_len     CONSTANT NUMBER (2) := 61;
        SUBTYPE module_name_t IS VARCHAR2 (61); -- package_Name_t ||'.'||Program_Name_t

    $ELSIF DBMS_DB_VERSION.ver_le_12_2 $THEN

        k_max_identifier_length   CONSTANT NUMBER (4) := 128; -- No multybite
        SUBTYPE package_name_t IS VARCHAR2 (128);
        SUBTYPE program_name_t IS VARCHAR2 (128);
        -- K_MAX_MODULE_NAME_LEN ::= package_name || '.' || program_name
        k_max_module_name_len     CONSTANT NUMBER (3) := 128 * 2 + 1;
        SUBTYPE module_name_t IS VARCHAR2 (257); -- package_Name_t ||'.'||Program_Name_t


        -- DBMS_UTILITY.FORMAT_ERROR_STACK
        k_fest_max_format_error_stack   NUMBER (4)    := 2000;
        SUBTYPE format_error_stack_t IS VARCHAR2(2000 BYTE);

        -- Constantes y subtipo para manejo del SQLERRM y SQLCODE
        k_sqle_max_message_in_bytes   NUMBER (3)    := 512;
        SUBTYPE sqlerrm_t IS VARCHAR2 (512 BYTE);
        SUBTYPE sqlcode_t IS NUMBER (5);

    $ELSIF DBMS_DB_VERSION.ver_le_18 $THEN

        k_max_identifier_length   CONSTANT NUMBER (4) := 128; -- No multybite
        SUBTYPE package_name_t IS VARCHAR2 (128);
        SUBTYPE program_name_t IS VARCHAR2 (128);
        -- K_MAX_MODULE_NAME_LEN ::= package_name || '.' || program_name
        k_max_module_name_len     CONSTANT NUMBER (3) := 128 * 2 + 1;
        SUBTYPE module_name_t IS VARCHAR2 (257); -- package_Name_t ||'.'||Program_Name_t


        -- Constantes y subtipo para manejo del SQLERRM y SQLCODE
        k_sqle_max_message_in_bytes   NUMBER (3)    := 512;
        SUBTYPE sqlerrm_t IS VARCHAR2 (512 BYTE);
        SUBTYPE sqlcode_t IS NUMBER (5);

    $ELSIF DBMS_DB_VERSION.ver_le_19 $THEN

        k_max_identifier_length   CONSTANT NUMBER (4) := 128; -- No multybite
        SUBTYPE package_name_t IS VARCHAR2 (128);
        SUBTYPE program_name_t IS VARCHAR2 (128);
        -- K_MAX_MODULE_NAME_LEN ::= package_name || '.' || program_name
        k_max_module_name_len     CONSTANT NUMBER (3) := 128 * 2 + 1;
        SUBTYPE module_name_t IS VARCHAR2 (257); -- package_Name_t ||'.'||Program_Name_t

        -- Constantes y subtipo para manejo del SQLERRM y SQLCODE
        k_sqle_max_message_in_bytes   NUMBER (3)    := 512;
        SUBTYPE sqlerrm_t IS VARCHAR2 (512 BYTE);
        SUBTYPE sqlcode_t IS NUMBER (5);

        -- DBMS_UTILITY.FORMAT_ERROR_STACK
        k_fest_max_format_error_stack   NUMBER (4)    := 2000;
        SUBTYPE format_error_stack_t IS VARCHAR2(2000 BYTE);

    $END

    --* Constantes para identificar el package
    k_package                 CONSTANT package_name_t := 'GRL_DEFS';

    --* Char Codes
    SUBTYPE char_t IS VARCHAR2 (1 CHAR); -- For multibyte

    k_chr_tab                   CONSTANT char_t           := CHR (9);
    k_chr_space                 CONSTANT char_t           := CHR (32);
    k_chr_line_feed             CONSTANT char_t           := CHR (10);
    k_chr_control_return        CONSTANT char_t           := CHR (13); -- DB in Windows?
    k_chr_eof                   CONSTANT char_t           := CHR (26);

    k_chr_char_str_delimiter    CONSTANT char_t           := '''';

END fdc_defs;
/
