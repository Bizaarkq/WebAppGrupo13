/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/*INICIO ELIMINAR*/
function eliminar(isbn)
{
    var confirmar;
    confirmar = confirm("Estás seguro que deseas eliminar " + isbn + " del registro?");
    if (confirmar) {
        location.href = "delete.jsp?isbn=" + isbn;
    }
}
function habilitar(){
    txtIsbn=document.getElementById("isbn").value;
    txtTitulo=document.getElementById("titulo").value;
    txtAutor=document.getElementById("autor").value;
    val=0;
    if(txtIsbn=="" || txtTitulo=="" || txtAutor=="" ){
        val++;
    }
    if(val==0){
        document.getElementById("insertar").disabled=false;
    }
    else{
        document.getElementById("insertar").disabled=true;
    }
}

document.getElementById("insertar").addEventListener("click", () => {});


/*FIN ELIMINAR*/
/*INICIO PAGINACION*/
$(document).ready(function () {
    $('#tabla').DataTable({
        sDom: 'lrtip',
        "language": idiomaEspanol
    });
});

var idiomaEspanol = {
    "sProcessing": "Procesando...",
    "sLengthMenu": "Mostrar _MENU_ registros",
    "sZeroRecords": "No se encontraron resultados",
    "sEmptyTable": "Ningún dato disponible en esta tabla",
    "sInfo": "Mostrando registros del _START_ al _END_ de un total de _TOTAL_ registros",
    "sInfoEmpty": "Mostrando registros del 0 al 0 de un total de 0 registros",
    "sInfoFiltered": "(filtrado de un total de _MAX_ registros)",
    "sInfoPostFix": "",
    "sSearch": "Buscar:",
    "sUrl": "",
    "sInfoThousands": ",",
    "sLoadingRecords": "Cargando...",
    "oPaginate": {
        "sFirst": "Primero",
        "sLast": "Último",
        "sNext": "Siguiente",
        "sPrevious": "Anterior"
    },
    "oAria": {
        "sSortAscending": ": Activar para ordenar la columna de manera ascendente",
        "sSortDescending": ": Activar para ordenar la columna de manera descendente"
    },
    "buttons": {
        "copy": "Copiar",
        "colvis": "Visibilidad"
    }
}
/*FIN PAGINACION*/