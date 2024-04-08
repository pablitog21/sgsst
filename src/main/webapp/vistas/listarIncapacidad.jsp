<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%> 
 
<jsp:include page="cabecera.jsp" />

<h3>Listado de Incapacidades  &nbsp; <a href="/crearInc" style="text-decoration: none"> <img src="https://findicons.com/files/icons/1014/ivista/256/plus.png" width="50"></a></h3>
<table class="table table-striped" id="incapacidades">
<thead class="table-dark">

	<th>Nombres</th>
	<th>Documento</th>
	<th>Area</th>
	<th>TipoIncapacidad</th>
	<th>Diagnostico CIE10</th>
	<th>Eps</th>	
	<th>SalarioDia</th>
	<th>FechaInicial</th>
	<th>TotalDias</th>
	<th>Editar</th>
	<th>Eliminar</th>
	

</thead>
<tbody>

	<c:forEach items="${listaIncapacidades}" var="empleado">
	
		<tr>
			
			<td>${empleado.getNombre()} ${empleado.getApellidos()}</td>	
			<td>${empleado.getNumID()}</td>	
			<td>${empleado.getAreaTrabajo()}</td>
			<td>${empleado.getTipoIncapacidad()}</td>		
			<td style="font-size:85%">${empleado.getDiagnostico().getDiagnostico()}</td>
			<td>${empleado.getEPS()}</td>
			<td ><fmt:formatNumber type="number" maxFractionDigits="2" value="${empleado.getSalarioDia()}" /></td>
			<td style="font-size:90%">${empleado.getFechaInicial()}</td>
			<td>${empleado.getTotalDias()}</td>
			<td><a href="/editarI?id=${empleado.getId()}">Editar</a></td>
			<td><button onclick="confirmarEliminar(${empleado.getId()})" type="button">Eliminar</button></td>
		
		</tr>
	
	</c:forEach>


</tbody>

</table>

<script>

function confirmarEliminar(idem){
	if(confirm("Esta seguro de eliminar el registro")){
		window.location.href="/eliminarInc?id="+idem;
	}
}


</script>

<jsp:include page="pie.jsp"/>

<script>
$(document).ready(function () {
    $('#incapacidades').DataTable();
});
</script>