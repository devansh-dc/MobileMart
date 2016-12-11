<%@page import="java.util.ArrayList"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update Product</title>
<style>
body {
	background-image: url("resources/images/back.jpg");
	background-color: #cccccc;
	color: cyan;
}
.jumbotron
{
background-image: url("resources/images/images (1).jpg");
}
</style>
</head>
<body>
	<%@include file="header.jsp"%>
	<div class="container">
		<div class="jumbotron">
		<%
				ArrayList<String> categoryList = new ArrayList<String>();
				categoryList.add("ANDROID");
				categoryList.add("IOS");
				categoryList.add("SYMBIAN");
				categoryList.add("UBUNTU");
				request.setAttribute("categoryList", categoryList);
			%>
		
			<form:form method="POST" action="updateaproduct"
				commandName="product">
				<table>
					<tr>
						<td><form:label path="id">ID</form:label></td>
						<td><form:input path="id" readonly="true" /></td>
					</tr>
					<tr>
						<td><form:label path="name">Name</form:label></td>
						<td><form:input path="name" /></td>
						<td><form:errors path="name" cssClass="error" /></td>
					</tr>
					<tr>
						<td><form:label path="price">Price</form:label></td>
						<td><form:input path="price" /></td>
						<td><form:errors path="price" cssClass="error" /></td>
					</tr>
					<tr>
						<td><form:label path="description">description</form:label></td>
						<td><form:input path="description" /></td>
					</tr>
					<tr>
						<td><form:label path="category">Category</form:label></td>
						<td><form:select path="category">
								<form:options items="${categoryList}" />
							</form:select></td>
					</tr>
					
					<tr>
						<td colspan="2"><input type="submit" value="Submit" /></td>
					</tr>
				</table>
			</form:form>
		</div>
	</div>
	<%@include file="footer.jsp"%>
</body>
</html>