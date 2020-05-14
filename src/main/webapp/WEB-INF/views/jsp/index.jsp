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
<link rel="stylesheet" href="http://localhost:8080/resources/core/css/index.css">
<c:url var="home" value="/" scope="request" />
</head>

<body>

	<img src="http://localhost:8080/resources/core/img/head-logo.jpg" alt="logo">

	<nav>
		<ul>
			<li><a class="nav-link" href="#">Главная</a></li>
			<li><a class="nav-link" href="search">Поиск товаров</a></li>
			<li><a class="nav-link" href="contacts">Контакты</a></li>
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
			<h2>Добрый день, друзья!</h2>
			<p>Настал долгожданный момент - стартовал этот проект.
			 Сайт ориентирован на поиск организаций по базе данных, а так же по поиску товаров
			 в нашем родном городе, Бобруйске.</p>
			 
			<p>Какое-то время сайт будет работать в тестовом режиме.</p>
		</div>
	</main>

	<br>
	<footer id="footer">
		<div>Сайт разработан в Brackets в 2020 г.</div>
	</footer>

	<script src="http://localhost:8080/resources/core/js/jquery-3.4.1.min.js"></script>
	<script src="http://localhost:8080/resources/core/js/bootstrap.min.js"></script>
</body>
</html>
