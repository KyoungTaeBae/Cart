<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script type="text/javascript">
	function infoPage(){
		document.location="ShowppingList.do?cmd=login";
	}
	function removeCart(i){
		document.location="delete.do?cmd=remove&index="+i;
	}  
</script>
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-sm-12 col-md-10 col-md-offset-1">
            <table class="table table-hover">
                <thead>
                    <tr>
                        <th>Pname</th>
                        <th class="text-center">Price</th>
                        <th class="text-center">Porigin</th>
                       <th class="text-center">Delete</th>
                    </tr>
                </thead>
                <tbody>
                <c:forEach var="i" items="${list}" varStatus="cnt">
                    <tr>
                        <td class="col-sm-8 col-md-6">
                        <div class="media">
                            <a class="thumbnail pull-left" href="#"> <img class="media-object" src="/cart/baseball/${i.picture }" style="width: 72px; height: 72px;"> </a>
                            <div class="media-body">
                                <h4 class="media-heading">${i.pname }</h4>
                                <h5 class="media-heading">${i.pcompany }</h5>
                            </div>
                        </div></td>
           <!--              <td class="col-sm-1 col-md-1" style="text-align: center">
                        <input type="email" class="form-control" id="exampleInputEmail1" value="3">
                        </td> -->
                        <td class="col-sm-1 col-md-1 text-center"><strong>${i.price }</strong></td>
                        <td class="col-sm-1 col-md-1 text-center"><strong>${i.porigin }</strong></td>
                        <td class="col-sm-1 col-md-1">
                        <button type="button" class="btn btn-danger" onclick="removeCart(${cnt.count-1})">
                            <span class="glyphicon glyphicon-remove"></span> Remove
                        </button></td>
                    </tr>
                   </c:forEach>
                    <tr>
                        <button type="button" class="btn btn-default" onclick="infoPage()">
                            <span class="glyphicon glyphicon-shopping-cart"></span> Continue Shopping
                        </button></td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
</div>
</body>
</html>