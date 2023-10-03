<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<html>
<head><title> Split Join Test</title> </head>
<body>
<c:set var="data" value="Mumbai,Delhi,Kerala,Pune,Kashmir"/>
<h3> Split Demo </h3>
<c:set var="CitiesArray" value="${fn:split(data,',')}"/>
<c:forEach  var="tempCity" items="${CitiesArray}">
     ${tempCity} <br/>
</c:forEach>
<h3> Join Demo </h3>
<c:set var="fun" value="${fn:join(CitiesArray,'*')}"/>
Result of Joining :  ${fun }
</body>
</html>