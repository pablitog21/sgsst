<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SGSS</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">

<link href="https://cdn.datatables.net/1.12.1/css/dataTables.bootstrap5.min.css"/>

<style>
/*the container must be positioned relative:*/
.autocompleteBS {
  position: relative;
  /*display: inline-block;*/
}
.autocompleteBS-items {
  position: absolute;
  border: 1px solid #d4d4d4;
  border-bottom: none;
  border-top: none;
  z-index: 99;
  /*position the autocomplete items to be the same width as the container:*/
  top: 100%;
  left: 0;
  right: 0;
}
.autocompleteBS-items div {
  padding: 10px;
  cursor: pointer;
  background-color: #fff; 
  border-bottom: 1px solid #d4d4d4; 
}
/*when hovering an item:*/
.autocompleteBS-items div:hover {
  background-color: #e9e9e9; 
}
/*when navigating through the items using the arrow keys:*/
.autocompleteBS-active {
  background-color:  #d4d4d4 !important; 
  color: #ffffff;
}
</style>

</head>
<body>

 <nav class="navbar navbar-expand-lg navbar-dark bg-success">
  <div class="container-fluid">
    <a class="navbar-brand" href="/listar">SGSST</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="/listar">Empleados</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" href="/listarIncapacidad">Ausentismo</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" href="listarUsuarios">Usuarios</a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle " href="#" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
           Reportes
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
              <li><a class="dropdown-item" href="/reporteAreas">Por Area de Trabajo</a></li>
            <li><a class="dropdown-item" href="#">Por Empleado</a></li>           
            <li><a class="dropdown-item" href="#">Por tipo de Incapacidad</a></li>
            <li><a class="dropdown-item" href="#">Por Estado de cuenta</a></li>
          </ul>
        </li>
      </ul>
    </div>
  </div>
</nav>
<br>

<div class="container">

