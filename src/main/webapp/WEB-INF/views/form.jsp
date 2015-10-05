<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
</head>
<body>
<h1>
	Hello world!  
</h1>

<P>  
<c:forEach items="${name}" var="element"> 
  <tr>
    <td>${element.name}</td>
<%--     <td>${element.requestType}</td>
    <td>${element.requestedFor}</td>
    <td>${element.timeSubmitted}</td> --%>
  </tr>
</c:forEach>
</P>
</body>
</html>