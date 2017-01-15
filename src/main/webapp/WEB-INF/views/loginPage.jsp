<!DOCTYPE html>
<html>
<style>
body {
	background-image: url("resources/images/back.jpg");
}
.jumbotron
{
background-image: url("resources/images/images (1).jpg");
}
.imgcontainer {
    text-align: center;
    margin: 24px 0 12px 0;
}

img.avatar {
    width: 20%;
    border-radius: 40%;
}
</style>
<body>
	<title>Login</title>
	<%@include file="header.jsp"%>
	<div class="container">
		<div class="jumbotron">
			<form name="login" action="perform_login" method="post">
    <div class="form-group">
    	<div id="legend">
		<legend class="">Login</legend>
		</div>
		<div class="imgcontainer">
    <img src="resources/images/user.png" alt="Avatar" class="avatar">
  </div>
      <label>Username:</label>
      <input type="username" class="form-control" name="username" placeholder="Enter username">
    </div>
    <div class="form-group">
      <label for="pwd">Password:</label>
      <input type="password" class="form-control" name="password" placeholder="Enter password">
    </div>
    <div class="checkbox">
      <label><input type="checkbox"> Remember me</label>
    </div>
    <button type="submit" class="btn btn-success">Submit</button>
    <span class="psw"><a href="#">Forgot password?</a></span>
  </form>
			</div>
		</div>
	<%@include file="footer.jsp"%>
</body>
</html>
