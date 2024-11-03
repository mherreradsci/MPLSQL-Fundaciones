CREATE OR REPLACE 
package  TIFUND_OWN.UER_ERRORES_TP
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
* Nombre:     UER_ERRORES_TP
* Proposito:  Package de Tipos: Incluye un "subtipo" por cada columna, un "tipo 
* colección" por cada columna, un "tipo record", un tipo "colección de records" 
* y un tipo "ref cursor" para la tabla.
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
 
    -- Constantes para identificar el package
    K_PACKAGE CONSTANT FDC_DEFS.PACKAGE_NAME_T := 'UER_ERRORES_TP';
     
    subtype erro_id_t is UER_ERRORES.erro_id%type;
    subtype programa_t is UER_ERRORES.programa%type;
    subtype mensaje_t is UER_ERRORES.mensaje%type;
    subtype aud_creado_por_t is UER_ERRORES.aud_creado_por%type;
    subtype aud_creado_en_t is UER_ERRORES.aud_creado_en%type;
    subtype aud_modificado_por_t is UER_ERRORES.aud_modificado_por%type;
    subtype aud_modificado_en_t is UER_ERRORES.aud_modificado_en%type;
    subtype lopr_id_t is UER_ERRORES.lopr_id%type;
     
    type erro_id_ct IS TABLE OF erro_id_t INDEX BY BINARY_INTEGER;
    type programa_ct IS TABLE OF programa_t INDEX BY BINARY_INTEGER;
    type mensaje_ct IS TABLE OF mensaje_t INDEX BY BINARY_INTEGER;
    type aud_creado_por_ct IS TABLE OF aud_creado_por_t INDEX BY BINARY_INTEGER;
    type aud_creado_en_ct IS TABLE OF aud_creado_en_t INDEX BY BINARY_INTEGER;
    type aud_modificado_por_ct IS TABLE OF aud_modificado_por_t INDEX BY BINARY_INTEGER;
    type aud_modificado_en_ct IS TABLE OF aud_modificado_en_t INDEX BY BINARY_INTEGER;
    type lopr_id_ct IS TABLE OF lopr_id_t INDEX BY BINARY_INTEGER;
     
    subtype UER_ERRORES_rt is UER_ERRORES%rowtype;
    type    UER_ERRORES_ct is table of UER_ERRORES_rt index by binary_integer;
    type    UER_ERRORES_rc is ref cursor;
     
end UER_ERRORES_TP;
/
