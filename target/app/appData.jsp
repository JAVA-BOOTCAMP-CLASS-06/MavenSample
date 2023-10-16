<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="ar.com.projects.bean.Persona"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>JSP Sample</title>
	</head>
	<body>
		<table>
			<tr>
				<td>NOMBRE</td>
				<td>DNI</td>
				<td>FECHA NAC</td>
				<td>SEXO</td>
			</tr>
<c:forEach items="${data}" var="item">
	<td><c:out value="${item.nombre}" /></td>
	<td><c:out value="${item.dni}" /></td>
	<td><c:out value="${item.sexo.descripcion}" /></td>
</c:forEach>

			<%
			    SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
				List<Persona> listPers = (List<Persona>)request.getAttribute("data");

				for (Persona p :listPers) {
			%>
				<tr>
					<td><%= p.getNombre() %></td>
					<td><%= p.getDni() %></td>
					<td><%= sdf.format(p.getFechaNac()) %></td>
					<td><%= p.getSexo().getDescription() %></td>
				</tr>
			<%
				}
			%>
		</table>
	</body>
</html>
