DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_preguntas_comunes`()
Select * from preguntas WHERE id <= 4$$
DELIMITER ;

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_preguntas_random`()
SELECT * FROM preguntas WHERE id>=5
ORDER BY RAND()
LIMIT 10$$
DELIMITER ;

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_resp`(IN `grupo` BIGINT(50), IN `pregunta` INT(50), IN `respuesta` VARCHAR(50))
INSERT INTO `respuestas` (`grupo_respuesta`, `id_pregunta`, `respuesta`) VALUES (grupo,pregunta,respuesta)$$
DELIMITER ;

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_actualizar_preguntas`(IN `param_numero` INT(5), IN `param_pregunta` VARCHAR(200), IN `param_tipo` VARCHAR(50), IN `param_respuestas` VARCHAR(500))
BEGIN

update preguntas 

set 
    pregunta = param_pregunta, 
    tipo = param_tipo, 
    respuestas = param_respuestas 

where id = param_numero;
END$$
DELIMITER ;

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_consultar_preguntas`()
BEGIN 
    select id, numero, pregunta, tipo, respuestas from preguntas order by id ASC;
END$$
DELIMITER ;

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_eliminar_preguntas`(IN `param_numero` SMALLINT(5))
BEGIN
    DELETE from preguntas where id = param_numero;
    END$$
DELIMITER ;

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_find_by_id`(IN `id_param` INT(3))
select * from preguntas where id=id_param$$
DELIMITER ;

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_insertar_preguntas`(IN `param_pregunta` VARCHAR(200), IN `param_tipo` VARCHAR(50), IN `param_respuestas` VARCHAR(500))
BEGIN 
    insert into preguntas (pregunta, tipo, respuestas) VALUES (param_pregunta, param_tipo, param_respuestas); 
END$$
DELIMITER ;
