
CREATE TABLE `preguntas` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `numero` int(5) NOT NULL,
  `pregunta` varchar(200) NOT NULL DEFAULT '',
  `tipo` varchar(50) NOT NULL,
  `respuestas` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `preguntas` (`id`, `numero`, `pregunta`, `tipo`, `respuestas`) VALUES
(7, 6, '¿Eres estudiante universitario?', 'Elección binaria', 'Si,No'),
(8, 7, '¿Tienes vida propia?', 'Elección simple', 'si,no,digo que si pero no,mi mama dice que no hago nada'),
(9, 4, '¿Que tipo de comidas prefieres?', 'Elección múltiple', 'asados,herbidos,guisados,tostados'),
(21, 21, '¿te gusta el café?', 'Elección binaria', 'Si,No'),
(22, 0, '¿Estas dentro del grupo?', 'Elección múltiple', 'de vez en cuando,retiré,ahi mas o meos'),
(23, 0, 'Baby', 'Elección simple', 'te quiero wuo wuo, la vida eh un ciclo, shark tutururuturu, me rehuso a darle un beso asi que guarda');

ALTER TABLE `preguntas`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `preguntas`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;



DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_actualizar_preguntas`(IN `param_numero` INT(5), IN `param_pregunta` VARCHAR(200), IN `param_tipo` VARCHAR(50), IN `param_respuestas` VARCHAR(100))
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
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_insertar_preguntas`(IN `param_pregunta` VARCHAR(200), IN `param_tipo` VARCHAR(50), IN `param_respuestas` VARCHAR(100))
BEGIN 
    insert into preguntas (pregunta, tipo, respuestas) VALUES (param_pregunta, param_tipo, param_respuestas); 
END$$
DELIMITER ;
