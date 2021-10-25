function cargarEditorial() {
    edit = ref_editorial.value;
    $("#listaEditorial").val(edit);
};


function actualizar_ajax(){
	//capturar los datos 
	var id_val = id.value;
	var isbn_val = isbn.value;
	var titulo_val = titulo.value;
	var autor_val = autor.value;
	var editorial_val = listaEditorial.value;
	var fecha_val = fechaPublicacion.value;

	//enviar los datos al update.jsp donde hace la actualizacion
	$.ajax({
		type: "POST",
		url: "update.jsp",
		data: {
			id:id_val,
			isbn:isbn_val,
			titulo: titulo_val,
			autor: autor_val,
			editorial:editorial_val,
			fecha: fecha_val
		},
		success: function(msg) {


			setTimeout(function() {
				window.location.replace("index.jsp");
			}, 5000);
			console.log("correcto");
			
		},
		error:function (xhr, ajaxOptions, thrownError){


			console.log("error");
		}  
	});
	
}



window.onload = setTimeout(cargarEditorial, 0);