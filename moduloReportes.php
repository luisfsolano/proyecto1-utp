<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Modulo de Reportes</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
<h1>Modulo de Reportes</h1>
    <FORM NAME="reporte" METHOD="post" ACTION="moduloReportes.php">
    <BR/>
    <SELECT NAME="campos">
    <option value="" selected disabled hidden>Seleccionar</option>
    <OPTION value="3">Sexo
    <OPTION value="2">Edad
    <OPTION value="1">Salario
    <OPTION value="4">Provincia
    <OPTION value="9">¿Que tipo de comidas prefieres?
    <OPTION value="21">¿te gusta el café?
    <OPTION value="28">¿Cuantos libros lees al mes?
    </SELECT>
    <INPUT NAME="consultar" VALUE="consultar" TYPE="submit"/>
    <INPUT NAME="total" VALUE="Total de Encuestas" TYPE="submit"/>
    </FORM>
    
    <?php

    //Total de encuestas realizadas 
        require_once("class/preguntas.php");

        $obj_preguntas = new preguntas();
        $numeroDeRespuestas = $obj_preguntas->ob_encuestas_realizadas();
        $nfilas = count($numeroDeRespuestas);
        if ($nfilas = 1)
        {
            foreach ($numeroDeRespuestas as $numeroTotal)
            {
                $totaldeencuestas = $numeroTotal['COUNT(DISTINCT grupo_respuesta)'];
                
            }
        }

//boton de consultar, reporte filtrado

        if(array_key_exists('consultar', $_POST))
        {
            $opcionseleccionada = $_REQUEST['campos'];

            define ('valor1', $opcionseleccionada);

            $obj_preguntas = new preguntas();
            $numeroDeRespuestas = $obj_preguntas->obtener_resp_porid(valor1);

            $nfilas = count($numeroDeRespuestas);

            if ($nfilas = 1)
            {
                foreach ($numeroDeRespuestas as $resultado){
                    print("<h3>".$resultado['pregunta']."</h3>");
                    $arrayResp = explode(",", $resultado['respuestas']);
                    
                        $ids = $ids.",".$resultado['id'];
                        print ("<TABLE>\n");
                        print ("<TR>\n");
                        print ("<TH style='border:1px solid black;' >Respuesta</TH>\n");
                        print ("<TH style='border:1px solid black;' >Valor</TH>\n");
                        print ("<TH style='border:1px solid black;' >Representación Gráfica</TH>\n");
                        print ("</TR>\n");
                        foreach ($arrayResp as $respuesta){
                            $obj_preguntas = new preguntas();
                            $numeroDeRespuestas = $obj_preguntas->ob_encuestas_por_filtro($respuesta);

                            $nfilas = count($numeroDeRespuestas);
                            if ($nfilas = 1)
                            {
                                foreach ($numeroDeRespuestas as $numeroTotal)
                                {
                                    $porcentaje = round (($numeroTotal['COUNT(DISTINCT grupo_respuesta)']/$totaldeencuestas)*100);
                                    print ("<TR>\n");
                                    print ("<TD style='border:1px solid black;'>" .$respuesta."</TD>\n");
                                    print ("<TD style='border:1px solid black;'>" .$numeroTotal['COUNT(DISTINCT grupo_respuesta)']."</TD>\n");
                                    print("<TD style='border:1px solid black;' CLASS='izquierda' WIDTH='400'><IMG SRC='img/puntoamarillo.gif' HEIGHT='10' WIDTH='" . $porcentaje*4 ."'></TD>\n");
                                    print("</TR>\n");
                                    //print "<p>La cantidad de encuestados con respuesta ".$respuesta. " son: " . $numeroTotal['COUNT(DISTINCT grupo_respuesta)']. "</p>";
                                }
                            }
                        }
                        print ("</TABLE>\n");

                    echo("<br><br>");
                }
                echo("<input type='hidden' value='".$ids."' name='ids'>");

            }
        }

//Consulta total de encuestas

        if(array_key_exists('total', $_POST))
        {

            print "<p>El numero total de encuestas realizadas dentro: " . $totaldeencuestas. "</p>";

        }


    ?>
</body>
</html>