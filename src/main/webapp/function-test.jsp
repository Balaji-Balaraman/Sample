<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<html>
<head><title> Function Test</title> </head>
<body>
<c:set var="data" value="Hi Balaji Welcome to Zuci Systems..." />
Length of the String <b>${data} :</b> ${fn:length(data)} <br> <br>
UpperCase of the String <b>${data} :</b> ${fn:toUpperCase(data)} <br> <br>
Lowercase of the String <b>${data} :</b> ${fn:toLowerCase(data)} <br> <br>
Does the String <b>${data}</b> start with <b> Welcome to OnBoarding </b>?: ${fn:startsWith(data,"Welcome to OnBoarding")} <br> <br>
Does the String <b>${data}</b> start with <b>Hi </b>?: ${fn:startsWith(data,"Hi")} <br> <br>
Length of the String <b>${data} :</b> ${fn:length(data)} <br> <br>
</body>
</html>