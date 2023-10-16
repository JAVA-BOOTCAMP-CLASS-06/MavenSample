<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
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
                <tr>
                    <td><c:out value="${item.nombre}" /></td>
                    <td><c:out value="${item.dni}" /></td>
                    <td><fmt:formatDate pattern="dd/MM/yyyy" value="${item.fechaNac}" /></td>
                    <td><c:out value="${item.sexo.description}" /></td>
                </tr>
            </c:forEach>
		</table>
	</body>
</html>
