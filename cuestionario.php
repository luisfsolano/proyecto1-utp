<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cuestionario</title>
</head>
<body>
    <h1>Cuestionario</h1>
    <h2>Responder las preguntas que se encuentran acontinuacion</h2>
    <hr><br>
    <form  method="post" action="respuestas.php">
        <?php
            require_once("class/preguntas.php");
            $obj_preguntascomunes = new preguntas();
            $preguntasComunes = $obj_preguntascomunes->consultarPreguntasComunes();
            $obj_preguntasrandom = new preguntas();
            $preguntasRandom = $obj_preguntasrandom->consultarPreguntasRandom();

            $preguntas = array_merge($preguntasComunes,$preguntasRandom);

            $nfilas = count($preguntas);
            $ids = "";
            if ($nfilas > 0){
                foreach ($preguntas as $resultado){
                    print("<h3>".$resultado['pregunta']."</h3>");
                    $arrayResp = explode(",", $resultado['respuestas']);
                    if ($resultado['tipo'] == 'Elección múltiple'){

                        $ids = $ids.",".$resultado['id']."[]";
                        print("<select multiple required name='".$resultado['id']."[]'>");
                        foreach ($arrayResp as $respuesta){
                            print ("<option value='".$respuesta."'>".$respuesta."");
                        }
                        print("</select>");  

                    }else{
                        $ids = $ids.",".$resultado['id'];
                        print("<select name='".$resultado['id']."'>");
                        foreach ($arrayResp as $respuesta){
                            print ("<option value='".$respuesta."'>".$respuesta."");
                        }
                        print("</select>");

                    }
                    echo("<br><br>");
                }
                echo("<input type='hidden' value='".$ids."' name='ids'>");
                
            }

        ?>
        <br>
        <hr>
        <input type="submit" value="Insertar" name="Insertar">  
    </form>
</body>
</html>