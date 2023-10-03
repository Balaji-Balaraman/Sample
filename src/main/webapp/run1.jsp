<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>My JSP Page</title>
    <%
        String cities[]={"mumbai","Singapore","london"};
        pageContext.setAttribute("myCities",cities);

        for(String s:cities)
               {
               out.println("<li>" +s+"</li>");
               }

        %>
</head>
<body>
    <c:set var="stuff" value="<%= new java.util.Date() %>"/>
    Last Updated: <c:out value="${stuff}" />
    <p>Current time: ${stuff} </p>

    <c:forEach var="tempCity" items="${myCities}">
    ${tempCity} <br/>
    </c:forEach>
</body>
</html>
