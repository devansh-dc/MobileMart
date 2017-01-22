<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.util.ArrayList"%>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
body {
	background-image: url("resources/images/back.jpg");
}
.jumbotron
{
background-image: url("resources/images/images (1).jpg");
}
</style>
<title>ANDROID PHONES</title>
</head>
<body>
	<%@include file="header.jsp"%>
	<div class="container">

		<div class="jumbotron">
			<h2>ANDROID PHONES</h2>
				<div class="container">
				<div class="row">
					<c:forEach var="p" items="${productList}">
						<div class="col-sm-4">
							<div class="panel panel-primary">
								<div class="panel-heading">
									<div class="row">
										<div class="col-sm-4">${p.id}.${p.name}</div>
										<div class="col-sm-3"></div>
										<div class="col-sm-2">
											<a href="updateproduct?id=${p.id}" data-toggle="tooltip"
												title="Update"><button class="btn btn-default"
													type="submit" data-toggle="modal">
													<span class="glyphicon glyphicon-pencil"></span>
												</button></a>
										</div>
										<div class="col-sm-3">
											<a href="deleteproduct?id=${p.id}" data-toggle="tooltip"
												title="Delete"><button class="btn btn-default"
													type="submit" data-toggle="modal">
													<span class="glyphicon glyphicon-trash"></span>
												</button></a>
										</div>
									</div>
								</div>
								<div class="panel-body">
									<img src="<c:url value='/resources/${p.id }.jpg' /> "
										class="img-responsive" style="width: 100%" alt="Image">
								</div>
								<div class="panel-footer">
									Description : ${p.description}<br>Category : ${p.category}<br>Rs. ${p.price}/-
								</div>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
		</div>
	</div>

	<%@include file="footer.jsp"%>
</body>
</html>