
$(document).ready(function(){
  $("#tipoInsert").change(function(){
    if ($("#tipoInsert").val()=="Elección binaria") {
        $("#respuestasInsertInput").attr('readonly', true);   
        $("#respuestasInsertInput").val("Si,No");
    } else {
        $("#respuestasInsertInput").attr('readonly', false);
        $("#respuestasInsertInput").val("");
    }
  });

  $("#tipoUpdate").change(function(){
    if ($("#tipoUpdate").val()=="Elección binaria") {
        $("#respuestasUpdateInput").attr('readonly', true);  
        $("#respuestasUpdateInput").val("Si,No");
    } else {
        $("#respuestasUpdateInput").attr('readonly', false);
        $("#respuestasUpdateInput").val("");
    }
  });

  $("#updateId").change(function(){
    $.ajax({                        
        type: "POST",                 
        url: "class/consulta.php",                     
        data: $("#updateForm").serialize(), 
        success: function(data)             
        {
            if (data.error) {
                alert(data.error);
            }else{
                $("#updatePregunta").val(data.pregunta.pregunta);
                $("#respuestasUpdateInput").val(data.pregunta.respuestas);
                $("#tipoUpdate").val(data.pregunta.tipo);
                if (data.pregunta.tipo=="Elección binaria") {
                    $("#respuestasUpdateInput").attr('readonly', true); 
                } else {
                    $("#respuestasUpdateInput").attr('readonly', false);
                }
            }
          //$('#resp').html(data);               
        }
    });
  });

  $("#actualizar").click(function(e){
    e.preventDefault();
    $.ajax({                        
        type: "POST",                 
        url: "class/guardar.php",                     
        data: $("#updateForm").serialize(), 
        success: function(data)             
        {
            if (data.error) {
                alert(data.error);
            }else{
                alert("Pregunta Actualizada correctamente");
                location.reload();
            }              
        }
    });
  });
});