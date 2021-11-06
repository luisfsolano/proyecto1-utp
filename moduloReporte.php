<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Módulo de Reportes</title>
</head>
<body>
    <h1>Módulo de Reportes</h1>
    <h2>Total de encuestas realizadas</h1>
    <?php
        require_once("class/preguntas.php");
            $obj_preguntas = new preguntas();
            $numeroDeRespuestas = $obj_preguntas->consultarNumeroTotalDeRespuestas();
            $nfilas = count($numeroDeRespuestas);
            if ($nfilas = 1)
            {
                foreach ($numeroDeRespuestas as $numeroTotal)
                {
                    print "<p>El numero total de encuestas son: " . $numeroTotal['total']. "</p>";
                }
            }
    ?>
    <h2>Total de encuestas realizadas por sexo</h2>

    <h2>Total de encuestas realizadas por Rango salarial</h2>

    <h2>Total de encuestas realizadas por Provincia</h2>
</body>
</html>