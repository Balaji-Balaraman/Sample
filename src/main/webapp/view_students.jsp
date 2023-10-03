<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<body>
<c:forEach var="tempStudent" items="${Student_list}" >
${tempStudent}
 <br/>
</c:forEach>
<!--<%-->
<!--String[] students= (String[]) request.getAttribute("Student_list");-->
<!--for(String a: students){-->
<!-- out.println(a);-->
<!--}-->
<!--%>-->
</body>
</html>