<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

     <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
     
    
<jsp:include page="cabecera.jsp"/>

<h3>Crear Empleado</h3>

<form:form method="POST" action="crear_empleado" modelAttribute="empleado">

<label>Nombre</label>
<form:input type="text" path="nombre" class="form-control" />
<form:errors path="nombre" style="color:red"></form:errors>
<br><br>

<label>Apellidos</label>
<form:input type="text" path="apellidos" class="form-control" />
<form:errors path="apellidos" style="color:red"></form:errors>
<br><br>

<label>Tipo Identificacion</label>
<form:select path="tipoID" class="form-select">

<form:option value="">-- Seleccionar</form:option>
<form:option value="CC">Cedula Ciudadania</form:option>
<form:option value="CE">Cedula Extranjeria</form:option>

</form:select>
<form:errors path="tipoID" style="color:red"></form:errors>
<br><br>

<label>No Identificacion</label>
<form:input path="numID" type="text" class="form-control"/>
<form:errors path="numID" style="color:red"></form:errors>
<br><br>

<label>Cargo</label>
<form:input type="text" path="cargo" class="form-control"/>
<form:errors path="cargo" style="color:red"></form:errors>
<br><br>

<label>Area Trabajo</label>
<form:select path="tipoID" class="form-select">

<form:option value="">-- Seleccionar</form:option>
<form:option value="Sistemas">Sistemas</form:option>
<form:option value="Ventas">Ventas</form:option>
<form:option value="Cartera">Cartera</form:option>
<form:option value="Oficios">Oficios</form:option>
<form:option value="Administracion">Administracion</form:option>
<form:option value="Otros">Otros</form:option>

</form:select>
<form:errors path="areaTrabajo" style="color:red"></form:errors>
<br><br>

<label>Salario</label>
<form:input type="text" path="salario" class="form-control"/>
<form:errors path="salario" style="color:red"></form:errors>
<br><br>

<label>Edad</label>
<form:input type="number" path="edad" class="form-control" />
<form:errors path="edad" style="color:red"></form:errors>
<br><br>

<label>EPS</label>
<form:input type="text" path="EPS" class="form-control" />
<form:errors path="EPS" style="color:red"></form:errors>
<br><br>

<label>AFP</label>
<form:input type="text" path="AFP" class="form-control" />
<form:errors path="AFP" style="color:red"></form:errors>
<br><br>

<label>ARL</label>
<form:input type="text" path="ARL" class="form-control" />
<form:errors path="ARL" style="color:red"></form:errors>
<br><br>






<button type="submin" class="btn btn-primary">Enviar</button><br><br>

</form:form>
                 
      
<jdp:include page="pie.jsp"/>