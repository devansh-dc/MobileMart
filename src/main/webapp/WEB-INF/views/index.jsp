<html>
<body>
	<%@include file="header.jsp"%>
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
<style>
.carousel-inner>.item>img, .carousel-inner>.item>a>img {
	width: 70%;
	margin: auto;
}

body {
	background-image: url("resources/images/back.jpg");
	background-color: #cccccc;
	color: cyan;
}
</style>
</head>
</body>

<div class="container">
	<br>
	<div id="myCarousel" class="carousel slide" data-ride="carousel">
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1"></li>
			<li data-target="#myCarousel" data-slide-to="2"></li>
			<li data-target="#myCarousel" data-slide-to="3"></li>
		</ol>

		<!-- Wrapper for slides -->
		<div class="carousel-inner" role="listbox">
			<div class="item active">
				<img src="resources/images/iphone6.png" alt="Chania" width="460"
					height="345">
			</div>

			<div class="item">
				<img src="resources/images/j7.jpg" alt="Chania" width="460"
					height="345">
			</div>

			<div class="item">
				<img src="resources/images/rmn3.jpg" alt="Flower" width="460"
					height="345">
			</div>

			<div class="item">
				<img src="resources/images/s6.jpg" alt="Flower" width="460"
					height="345">
			</div>
		</div>

		<!-- Left and right controls -->
		<a class="left carousel-control" href="#myCarousel" role="button"
			data-slide="prev"> <span class="glyphicon glyphicon-chevron-left"
			aria-hidden="true"></span> <span class="sr-only">Previous</span>
		</a> <a class="right carousel-control" href="#myCarousel" role="button"
			data-slide="next"> <span
			class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
			<span class="sr-only">Next</span>
		</a>
	</div>
</div>

<div class="row">
	<div class="col-sm-4" style="background-image: url("resources/images/back.jpg"); ">
		<div class="container">
			<h2>Iphone 6s</h2>
			<img src="resources/images/iphone6.png" class="img-circle"
				alt="Cinque Terre" width="304" height="236">
		</div>

	</div>
	<div class="col-sm-4" style="background-image: url("resources/images/back.jpg");">
		<div class="container">
			<h2>Redmi Note 3</h2>
			<img src="resources/images/rmn3.jpg" class="img-circle"
				alt="Cinque Terre" width="304" height="236">
		</div>
	</div>
	<div class="col-sm-4" style="background-image: url("resources/images/back.jpg");">
		<div class="container">
			<h2>Samsung S6</h2>
			<img src="resources/images/s6.jpg" class="img-circle"
				alt="Cinque Terre" width="304" height="236">
		</div>
	</div>
</div>
</body>
</html>


<%@include file="footer.jsp"%>
</body>
</html>
