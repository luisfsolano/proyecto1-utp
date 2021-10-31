<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Módulo de Mantenimiento</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script type="text/javascript" src="mantenimiento.js"></script>
</head>
<body>
    <h1 >Modulo Mantenimiento</h1>
    <h2>Preguntas almancenadas</h2>
    <!-- <form  method="post" action="moduloMantenimiento.php" id="submitconsultar">
        <input type="submit" value="Consultar Preguntas" name="Consultar">  
    </form> -->
    <?php
        require_once("class/preguntas.php");

        if(array_key_exists('Insertar', $_POST))
        {
            $obj_preguntas = new preguntas();
            $noticias = $obj_preguntas->Insertar($_REQUEST['pregunta'], $_REQUEST['tipo'], $_REQUEST['respuestas']);   
            
            header("Refresh:0");
        }

        if(array_key_exists('Eliminar', $_POST))
        {
            $obj_preguntas = new preguntas();
            $noticias = $obj_preguntas->eliminar($_REQUEST['numero']);  
            header("Refresh:0");  
        }

        // if(array_key_exists('Consultar', $_POST))
        // {
            $obj_preguntas = new preguntas();
            $preguntas = $obj_preguntas->consultar();

        $nfilas = count($preguntas);
            if ($nfilas > 0)
            {
                print ("<TABLE style:'border-collapse: collapse;'>\n");
                print ("<TR>\n");
                print ("<TH>Numero</TH>\n");        
                print ("<TH>Pregunta</TH>\n");  
                print ("<TH>Tipo</TH>\n");  
                print ("<TH>Respuestas</TH>\n");  
                print ("</TR>\n");
    
                foreach ($preguntas as $resultado)
                {
                    print ("<TR>\n");
                    print ("<TD style='border:1px solid black;'>" . $resultado['id'] ."</TD>\n");
                    print ("<TD style='border:1px solid black '>" . $resultado['pregunta'] ."</TD>\n");
                    print ("<TD style='border:1px solid black'>" . $resultado['tipo'] ."</TD>\n");
                    print ("<TD style='border:1px solid black'>" . $resultado['respuestas'] ."</TD>\n");
                    print ("</TR>\n");
                }
                print ("</TABLE>");
        }
    //    }
    ?>

    <h2>Insertar Pregunta</h2>
    <form  method="post" action="moduloMantenimiento.php">

        Tipo:         
        <select id="tipoInsert" name="tipo">
            <option value="Elección simple" selected>Elección simple
            <option value="Elección múltiple">Elección múltiple
            <option value="Elección binaria">Elección binaria
        </select> <br>

        Titulo pregunta:  
        <input type="text"   value="" name="pregunta"  > <br>

        <div id="respuestasInsertDiv">
            Respuestas:  
            <input type="text"   value="" name="respuestas" id="respuestasInsertInput"> <br>
        </div>

        <input type="submit" value="Insertar" name="Insertar">  
    </form>

<h2>Actualizar Pregunta</h2>
    <form  method="post" action="moduloMantenimiento.php" id="updateForm">

        Actualizar Numero:  
        <input type="text"   value="" name="id" id="updateId"> <br>

        Actualizar tipo:         
        <select id="tipoUpdate" name="tipo">
            <option value="Elección simple" selected>Elección simple
            <option value="Elección múltiple">Elección múltiple
            <option value="Elección binaria">Elección binaria
        </select> <br>

        Actualizar Pregunta:  
        <input type="text"   value="" name="pregunta" id="updatePregunta"> <br>

        <div id="respuestasUpdateDiv">
            Respuestas:  
            <input type="text" id="respuestasUpdateInput" value="" name="respuestas"> <br>
        </div>

        <button  value="Actualizar" id="actualizar">Actualizar</button> 
    </form>

<h2>Eliminar Pregunta</h2>
    <form  method="post" action="moduloMantenimiento.php">
        Eliminar pregunta numero:  
        <input type="text"   value="" name="numero"  > <br>
        <input type="submit" value="Eliminar" name="Eliminar">  
    </form>
</body>
</html>