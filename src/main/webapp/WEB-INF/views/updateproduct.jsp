<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update Product</title>
</head>
<body>
<form:form method="POST" action="updateaproduct" commandName="product">
   <table>
   <tr>
   <td><form:label path="id">ID</form:label></td>
        <td><form:input path="id" readonly="true" /></td>
        </tr>
    <tr>
        <td><form:label path="name">Name</form:label></td>
        <td><form:input path="name" /></td>
    </tr>
    <tr>
        <td><form:label path="price">Price</form:label></td>
        <td><form:input path="price" /></td>
    </tr>
    <tr>
        <td><form:label path="description">description</form:label></td>
        <td><form:input path="description" /></td>
    </tr>
    <tr>
        <td><form:label path="category">category</form:label></td>
        <td><form:input path="category" /></td>
    </tr>
    <tr>
        <td colspan="2">
            <input type="submit" value="Submit"/>
        </td>
    </tr>
</table>  
</form:form>
</body>
</html>