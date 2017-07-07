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
<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Open+Sans:400,700"
	rel="stylesheet">
<link href="/cart/css/Info.css" rel="stylesheet">

</head>

<body>
 
	<div class="container">
		<div class="card">
			<div class="container-fliud">
				<div class="wrapper row">
					<div class="preview col-md-6">

						<div class="preview-pic tab-content">
							<div class="tab-pane active" id="pic-1">
								<img src="/cart/baseball/${infoSel.picture }" alt="Image"
									style="width: 400px; height: 300px; margin-right: 50px;"/>
							</div>
						</div>


					</div>
					<form action="CartList.do?cmd=cartlist" method="post">
						<div class="details col-md-6">
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
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
