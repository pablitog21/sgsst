<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

     <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
     
    
<jsp:include page="cabecera.jsp"/>

<h3>${titulo}</h3>

<form:form method="POST" action="crear_usuario" modelAttribute="usuario">

<label>Username</label>
<form:input type="text" path="username" class="form-control" />
<form:errors path="username" style="color:red"></form:errors>
<br><br>

<label>Password</label>
<form:input type="text" path="password" class="form-control" />
<form:errors path="password" style="color:red"></form:errors>
<br><br>

<label>Rol</label>
<form:select path="roles" class="form-select">

<form:option value="">--Seleccionar--</form:option>
<form:option value="Admin">Administrador</form:option>
<form:option value="Auxiliar">Auxiliar</form:option>
<form:option value="Consulta">Consulta</form:option>
<form:option value="Consulta">Pasante</form:option>


</form:select>
<form:errors path="roles" style="color:red"></form:errors>
<br><br>


<form:hidden path="empUnoaUno"/>


<button type="submin" class="btn btn-primary">Enviar</button><br><br>

</form:form>
                 
      
<jsp:include page="pie.jsp"/>