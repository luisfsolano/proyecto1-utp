<?php   
    header('Content-Type: application/json; charset=utf-8');
    if(!empty($_POST))
    {
        $rs=array();
        $id = $_POST['id'];
        $pregunta  = $_POST['pregunta'];
        $respuesta  = $_POST['respuestas'];
        $tipo  = $_POST['tipo'];
        
        if($id==""){
            $rs['error']="id vacio";
        }elseif($pregunta==""){
            $rs['error']="pregunta vacia";
        }elseif($respuesta==""){
            $rs['error']="respuesta vacia";
        }elseif($tipo==""){
            $rs['error']="tipo vacio";
        }

        require_once("preguntas.php");

        $obj_preguntas = new preguntas();
        $noticias = $obj_preguntas->actualizar($id, $pregunta,$tipo,$respuesta);  
        echo json_encode($rs);
    }
?>