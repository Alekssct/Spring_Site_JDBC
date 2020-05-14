<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page session="false"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ru">

<head>
<meta charset="UTF-8">
<title>Start page</title>
<!-- <link rel="stylesheet" href="css/bootstrap.css"> -->
<link rel="stylesheet"
	href="http://localhost:8080/resources/core//css/index.css">
</head>

<body>

	<img src="http://localhost:8080/resources/core/img/head-logo.jpg"
		alt="logo">

	<nav>
		<ul>
			<li><a class="nav-link" href="index">Главная</a></li>
			<li><a class="nav-link" href="search">Поиск товаров</a></li>
			<li><a class="nav-link" href="#">Контакты</a></li>
			<li><a class="nav-link" href="login">Вход</a></li>
		</ul>
	</nav>
	<br>

	<main>
		<div id="left">
			<div id="left-text">
				<h2>Информация для рекламодателей.</h2>
				<p>Здесь могла бы быть ваша реклама! =)</p>
			</div>
		</div>

		<div id="right">
			<h2>Обратная связь</h2>
			<p>E-mail: alekssct@yandex.ru</p>
			<p>Тел.: (8029) 5437411</p>
		</div>
	</main>

	<br>
	<footer id="footer">
		<div>Сайт разработан в Brackets в 2020 г.</div>
	</footer>

	<script
		src="http://localhost:8080/resources/core/js/jquery-3.4.1.min.js"></script>
	<script src="http://localhost:8080/resources/core/js/bootstrap.min.js"></script>
</body>
</html>
