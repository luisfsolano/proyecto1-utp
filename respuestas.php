<?php
    require_once("class/preguntas.php");

    $arrayResp = explode(",", $_REQUEST['ids']);
    $rand = rand(10, 99);
    $timestamp = date_timestamp_get(date_create());
    $idResp = $timestamp.$rand;


    foreach ($arrayResp as $id){
        if($id!=""){
            if(strpos($id, '[]')){
                $idPregunta = str_replace("[]", "",$id);
                $subArray = $_REQUEST[$idPregunta];
                foreach ($subArray as $respuesta){
                    $obj_preguntas = new preguntas();
                    $obj_preguntas->InsertarRespuesta($idResp,$idPregunta,$respuesta);
                }
            }else{
                $obj_preguntas = new preguntas();
                $obj_preguntas->InsertarRespuesta($idResp,$id,$_REQUEST[$id]);
            }
        }
    }

    print("
        <h1>Respuestas registradas correctamente</h1>
        gracias por participar</br></br>
        <a href='cuestionario.php'> Llenar nuevamente </a>
    ");

?>