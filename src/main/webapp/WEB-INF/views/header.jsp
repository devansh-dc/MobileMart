<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>MOBILE MART</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script language="javascript" type="text/javascript">
	function formSubmit() {
		document.getElementById("logout").submit();
	}
</script>
</head>
<body>
	<c:url value="/perform_logout" var="logout" />
	<form action="${logout}" method="post" id="logout">
		<input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}" />
	</form>
	<nav class="navbar navbar-inverse">
		<div class="container-fluid">

			<ul class="nav navbar-nav">
				<li class="active"><a href="index">Home</a></li>
				<li><a href="aboutus">About Us</a></li>
				<li><a href="contactus">Contact Us</a></li>
				<c:if test="${pageContext.request.userPrincipal.name=='admin'}">
				<li><a href="allproducts">All Products</a></li>
				<li><a href="addproduct">Add a product</a></li>
				</c:if>
			<c:if test="${pageContext.request.userPrincipal.name!='admin'}">
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#">Mobile Phones <span
						class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="android">Android</a></li>
						<li><a href="#">Ubuntu</a></li>
						<li><a href="#">Ios</a></li>
					</ul></li>
					</c:if>

			</ul>
			<ul class="nav navbar-nav navbar-right">

				<c:if test="${pageContext.request.userPrincipal.name != null}">
					<li>Welcome ${pageContext.request.userPrincipal.name}</li>
					<li><a href="javascript:formSubmit()">Logout</a></li>
					<security:authentication var="user"
						property="principal.authorities" />
					<security:authorize var="loggedIn" access="isAuthenticated()">
						<security:authorize access="hasRole('USER')">
						</security:authorize>
					</security:authorize>
				</c:if>
				<li><a href="signup"><span class="glyphicon glyphicon-user"></span>
						Sign Up</a></li>
				<li><a href="login"><span
						class="glyphicon glyphicon-log-in"></span> Login</a></li>			
			</ul>
		</div>
	</nav>
	<script>
		$('ul.nav li.dropdown').hover(function() {
			$(this).find('.dropdown-menu').stop(true, true).fadeIn(500);
		}, function() {
			$(this).find('.dropdown-menu').stop(true, true).fadeOut(500);
		});
	</script>

</body>
</html>
