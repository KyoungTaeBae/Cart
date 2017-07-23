<%@page import="cart.dao.ListDao"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="en">
<head>

<meta name="viewport" content="width=device-width, initial-scale=1 ">
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">

<title>eCommerce Product Detail</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<link href="/cart/css/Info.css" rel="stylesheet">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>

<body>
<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#myNavbar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#">Logo</a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav navbar-right">
					<li><a href="#"><span class="glyphicon glyphicon-user"></span>
							Your Account</a></li>
					<li><a href="#"><span
							class="glyphicon glyphicon-shopping-cart"></span> Cart</a></li>
				</ul>
			</div>
		</div>
	</nav>
		<div class="card">
			<div class="container-fliud">
				<div class="wrapper row">
					<div class="preview col-md-6">

						<div class="preview-pic tab-content">
							<div class="tab-pane active" id="pic-1">
								<img src="/cart/baseball/${infoSel.picture }" alt="Image"
									style="width: 580px; height: 530px; margin-right: 50px;"/>
							</div>
						</div>


					</div>
						<div class="details col-md-6">
					<form action="CartList.do?cmd=cartlist" method="post" style="margin-top: 100px">
						<h3 class="product-title">이름: ${infoSel.pname }</h3>

						<p class="product-description"></p>
						<h4 class="price">
							가격: <span>${infoSel.price } 원</span>
						</h4>
						<h5 class="colors">회사명: ${infoSel.pcompany }</h5>
						<h5 class="colors">원산지: ${infoSel.porigin }</h5>
						<div class="action">
							<input type="hidden" name="pname" value="${infoSel.pname }">
							<input class="btn btn-default" type="submit" value="장바구니 추가">
						</div>
					</form>
				</div>
				</div>
			</div>
		</div>

</body>
</html>
