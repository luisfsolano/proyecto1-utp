<?php
     require_once('modeloCredencialesBD.php');
     class preguntas extends modeloCredencialesBD
     {
         protected $id;
         protected $preguntas;
         protected $tipo;
         protected $respuestas;
         public function __construct()
         {
             parent::__constuctor();
         }
     

        public function Insertar($pregunta, $tipo, $respuestas)
        {
            # code...
            try{
            $instruccion = "CALL sp_insertar_preguntas('$pregunta','$tipo','$respuestas')";
            $this->_db->query($instruccion);
            $this->_db->close();
            } catch (Exception $e) {
                echo "Fallo al insertar la pregunta";
            }
        }

        public function InsertarRespuesta($grupo, $pregunta, $respuesta)
        {
            try{
            $instruccion = "CALL insert_resp($grupo,$pregunta,'$respuesta')";
            $this->_db->query($instruccion);
            $this->_db->close();
            } catch (Exception $e) {
                echo "Fallo al insertar la respuesta";
            }
        }

        public function consultar()
        {
            # code...
            $instruccion = "CALL sp_consultar_preguntas()";

            $consulta= $this->_db->query($instruccion);
            $resultado=$consulta->fetch_all(MYSQLI_ASSOC);

            if(!$resultado)
            {
                echo "Fallo al consultar las preguntas";
            }
            else
            {
                return $resultado;
                $resultado->close();
                $this->_db->close();
            }
        }
        public function consultarPreguntasComunes()
        {
            # code...
            $instruccion = "CALL get_preguntas_comunes()";

            $consulta= $this->_db->query($instruccion);
            $resultado=$consulta->fetch_all(MYSQLI_ASSOC);

            if(!$resultado)
            {
                echo "Fallo al consultar las preguntas";
            }
            else
            {
                return $resultado;
                $resultado->close();
                $this->_db->close();
            }
        }
        public function consultarPreguntasRandom()
        {
            # code...
            $instruccion = "CALL get_preguntas_random()";

            $consulta= $this->_db->query($instruccion);
            $resultado=$consulta->fetch_all(MYSQLI_ASSOC);

            if(!$resultado)
            {
                echo "Fallo al consultar las preguntas";
            }
            else
            {
                return $resultado;
                $resultado->close();
                $this->_db->close();
            }
        }

        public function consultarById($id)
        {
            # code...
            $instruccion = "CALL sp_find_by_id($id)";
            
            $consulta= $this->_db->query($instruccion);
            if($consulta){
                $resultado=$consulta->fetch_all(MYSQLI_ASSOC);  
                if(!$resultado){
                    return null;
                }else{
                    return $resultado[0];
                    $resultado->close();
                }
            }
            $this->_db->close();
        }

        public function actualizar($id, $pregunta, $tipo, $respuestas)
        {
            # code...
            $instruccion = "CALL sp_actualizar_preguntas('$id','$pregunta','$tipo','$respuestas')";
            $this->_db->query($instruccion);
                $this->_db->close();
        }

        public function eliminar($numero)
        {
            # code...
            $instruccion = "CALL sp_eliminar_preguntas('$numero')";
            $this->_db->query($instruccion);
                $this->_db->close();
        }
    
     }
?>