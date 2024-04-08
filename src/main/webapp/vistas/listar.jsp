<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 
<jsp:include page="cabecera.jsp" />

<h3>Listado de Empleados  &nbsp; <a href="/crear"> <img src="https://findicons.com/files/icons/1014/ivista/256/plus.png" width="50"></a></h3>
<table class="table table-striped" id="incapacidades">
<thead class="table-dark">

	<th>Nombre</th>
	<th>Apellidos</th>
	<th>TipoID</th>
	<th>Documento</th>
	<th>Cargo</th>	
	<th>Editar</th>
	<th>Eliminar</th>
	<th>Usuario</th>

</thead>
<tbody>

	<c:forEach items="${listaEmpleados}" var="empleado">
	
		<tr>
			
			<td>${empleado.getNombre()}</td>
			<td>${empleado.getApellidos()}</td>
			<td>${empleado.getTipoID()}</td>
			<td>${empleado.getNumID()}</td>			
			<td>${empleado.getCargo()}</td>
			<td><a href="/editarE?id=${empleado.getId()}">Editar</a></td>
			<td><button onclick="confirmarEliminar(${empleado.getId()})" type="button">Eliminar</button></td>
			<td><a href="/crearUser?id=${empleado.getId()}">Usuario</a></td>
		
		</tr>
	
	</c:forEach>


</tbody>

</table>

<script>

function confirmarEliminar(idem){
	if(confirm("Esta seguro de eliminar el registro")){
		window.location.href="/eliminarEmpleado?id="+idem;
	}
}

</script>

<jsp:include page="pie.jsp"/>

<script>

$(document).ready(function () {
    $('#incapacidades').DataTable();
});

</script>