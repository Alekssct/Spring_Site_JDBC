<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page session="false"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ru">

<head>
<meta charset="UTF-8">
<title>Start page</title>
<link rel="stylesheet"
	href="http://localhost:8080/resources/core/css/search.css">
</head>

<body>

	<img src="http://localhost:8080/resources/core/img/head-logo.jpg"
		alt="logo">
<!-- Навигация -->
	<nav>
		<ul>
			<li><a class="nav-link" href="index">Главная</a></li>
			<li><a class="nav-link" href="#">Поиск товаров</a></li>
			<li><a class="nav-link" href="contacts">Контакты</a></li>
			<li><a class="nav-link" href="login">Вход</a></li>
		</ul>
	</nav>
	<br>

	<main>
	<!-- Рекламный блок -->
		<div id="left">
			<div id="left-text">
				<h2>Информация для рекламодателей.</h2>
				<p>Здесь могла бы быть ваша реклама! =)</p>
			</div>
		</div>
	<!-- Поиск -->
		<div id="right">
			<h2>Поиск товара по базе данных.</h2>

			<form:form modelAttribute="data" action="/search" class="form-inline" method="post">
				<form:input type="text" path="data" placeholder="введите текст поиска" />
				<input class="btn btn-outline-success my-2 my-sm-0" type="submit" value="Поиск" />
			</form:form>
		</div>
	</main>

	<!-- Таблица найденного -->
	<c:if test="${organizations.size() gt 0}">
		<table border="1">
			<tr>
				<td id="cell"><b>Название</b></td>
				<td id="cell"><b>Адрес</b></td>
				<td id="cell"><b>Тел.</b></td>
				<td id="cell"><b>УНП</b></td>
				<td id="cell"><b>Описание деятельности</b></td>
			</tr>
			<c:forEach var="organization" items="${organizations}">
				<tr>
					<td id="cell"><c:out value="${organization.name}"></c:out></td>
					<td id="cell"><c:out value="${organization.adress}"></c:out></td>
					<td id="cell"><c:out value="${organization.telephone}"></c:out></td>
					<td id="cell"><c:out value="${organization.unp}"></c:out></td>
					<td id="cell"><c:out value="${organization.description}"></c:out></td>
					<c:url var="updateUrl" value="/update/${organization.id}"></c:url>
					<td id="cell"><a href="${updateUrl}">Изменить</a></td>
					<c:url var="deleteUrl" value="/delete/${organization.id}"></c:url>
					<td id="cell"><a href="${deleteUrl}">Удалить</a></td>
				</tr>
			</c:forEach>
		</table>
	</c:if>

	<!-- Сохранение и редактирование данных -->
	<div id="save_or_update">
		<div><c:out value="${deleteMessage}" /></div>
		
		<c:url var="saveUrl" value="/save"></c:url>
		<form:form action="${saveUrl}" modelAttribute="newOrg" method="post">
			<form:input type="hidden" path="id" /><br>
			<div>Название</div>
			<form:input type="text" path="name" /><br>
			<div>Адрес</div>
			<form:input type="text" path="adress" /><br>
			<div>Тел.</div>
			<form:input type="text" path="telephone" /><br>
			<div>УНП</div>
			<form:input type="text" path="unp" /><br>
			<div>Описание деятельности</div>
			<form:input type="text" path="description" /><br>
			<br>
			<input type="submit" value="Сохранить">
		</form:form>
		<div><c:out value="${saveMessage}" /></div>
	</div>

	<script
		src="http://localhost:8080/resources/core/js/jquery-3.4.1.min.js"></script>
	<script src="http://localhost:8080/resources/core/js/bootstrap.min.js"></script>
</body>

</html>
