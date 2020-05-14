<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page session="false"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ru">

<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="http://localhost:8080/resources/core/css/login.css">
<c:url var="login" value="/" scope="request" />
</head>

<body>

	<img src="http://localhost:8080/resources/core/img/head-logo.jpg" alt="logo">

	<nav>
		<ul>
			<li><a class="nav-link" href="index">Главная</a></li>
			<li><a class="nav-link" href="search">Поиск товаров</a></li>
			<li><a class="nav-link" href="contacts">Контакты</a></li>
			<li><a class="nav-link" href="#">Вход</a></li>
		</ul>
	</nav>
	<br>
	
	<div id="div-login">
	<div>Логин:</div>
	<input type="text" id="email">
	<div>Пароль:</div>
	<input type="password" id="password">
	<br>
	<button id="button">Войти</button>
	</div>
</body>
</html>
