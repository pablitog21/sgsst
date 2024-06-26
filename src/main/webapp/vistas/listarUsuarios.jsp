<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 
<jsp:include page="cabecera.jsp" />

<h3>Listado de Usuarios</h3>
<table class="table table-striped" id="incapacidades">
<thead class="table-dark">

	<th>Username</th>
	<th>FechaCreacion</th>
	<th>FechaUltimoIngre</th>
	<th>Rol</th>	
	<th>Editar</th>
	<th>Eliminar</th>

</thead>
<tbody>

	<c:forEach items="${listaUsuarios}" var="usu">
	
		<tr>
			
			<td>${usu.getUsername()}</td>
			<td>${usu.getCreateDate()}</td>
			<td>${usu.getLasInDate()}</td>
			<td>${usu.getRoles()}</td>	
			<td><a href="/editarE_?id=${usu.getId()}">Editar</a></td>
			<td><button onclick="confirmarEliminar(${usu.getId()})" type="button">Eliminar</button></td>
			
		
		</tr>
	
	</c:forEach>


</tbody>

</table>

<script>

function confirmarEliminar(idem){
	if(confirm("Esta seguro de eliminar el registro")){
		window.location.href="/eliminarUsuario?id="+idem;
	}
}

</script>

<jsp:include page="pie.jsp"/>

<script>

$(document).ready(function () {
    $('#incapacidades').DataTable();
});

</script>