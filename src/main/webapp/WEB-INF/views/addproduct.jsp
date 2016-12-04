<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@page import="java.util.ArrayList" %>
<html>
<head>
<style>
body {
    background-image: url("resources/images/back.jpg");
    background-color: #cccccc;
    color:cyan;
}
.jumbotron {
	background-image: url("resources/images/images (1).jpg");
}
</style>
    <title>Add a product</title>
</head>
<body>
<%@include file="header.jsp"%>
<div class="container">
  <div class="jumbotron">
  <% 
ArrayList<String> categoryList =new ArrayList<String>();
categoryList.add("ANDROID");
categoryList.add("IOS");
categoryList.add("SYMBIAN");
categoryList.add("UBUNTU");
request.setAttribute("categoryList",categoryList);
%>
  
<h2>Product Details</h2>
<form:form method="POST" action="addnewproduct" commandName="product"  enctype="multipart/form-data">
   <table>
    <tr>
        <td><form:label path="name">Name</form:label></td>
        <td><form:input path="name" /></td>
    </tr>
    <tr>
        <td><form:label path="price">Price</form:label></td>
        <td><form:input path="price" /></td>
    </tr>
    <tr>
        <td><form:label path="description">Description</form:label></td>
        <td><form:input path="description" /></td>
    </tr>
    <tr>
        <td><form:label path="category">Category</form:label></td>
        <td>
            <form:select path="category" >
             <form:options items="${categoryList}"/>
             </form:select>
            </td>
    </tr>
    <tr>
    	<td><form:input type="file" path="image"/></td>
    </tr>
    
    <tr>
        <td colspan="2">
            <input type="submit" value="Submit"/>
        </td>
    </tr>
</table>  
</form:form>
</div>
</div>
<%@include file="footer.jsp"%>
</body>
</html>