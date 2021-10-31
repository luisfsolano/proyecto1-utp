<?php   
    header('Content-Type: application/json; charset=utf-8');
    if(!empty($_POST))
    {
        $rs=array();
        $id = $_POST['id'];
        
        if($id==""){
            $rs['error']="id vacio";
        }

        require_once("preguntas.php");

        $obj_preguntas = new preguntas();
        $noticias = $obj_preguntas->consultarById($id);  
        if ($noticias==null) {
            $rs['error']="no se encontro la información, verifique el numero buscado";
        }else{
            $rs['pregunta']=$noticias;
        }

        //echo($noticias);
        echo json_encode($rs);
    }

?>