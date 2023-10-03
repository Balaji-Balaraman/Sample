<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.util.*,com.myapp.jstl.Student" %>
<%
List<Student> data=new ArrayList<>();
data.add(new Student("john","doe",false));
data.add(new Student("MaxWell","Johnson",true));
data.add(new Student("Mary","public",false));
pageContext.setAttribute("myStudents",data);
%>
<html>
<head> <title>forEach Option</title> </head>
<body>
<table border="1">
<tr>
<th>First name</th>
<th>Last name</th>
<th>Gold Customer</th>
<c:forEach var="tempStudent" items="${myStudents}">
<tr>
<td>${tempStudent.firstName}</td>
<td>${tempStudent.lastName}</td>
<td>${tempStudent.goldCustomer}</td>
</tr>

<%-- ${tempStudent.firstName} ${tempStudent.lastName}, ${tempStudent.goldCustomer} --%>
<br/>
</c:forEach>
<%--
  for(Student s:data)
  {

  out.println("<li>" +s.getFirstName()+"  "+s.getLastName()+"  "+s.isGoldCustomer()+"</li>");

  }
  --%>
  <c:forEach items="${cookie}" var="currentCookie">
      Cookie name as map entry key: ${currentCookie.key} <br/>
      Cookie object as map entry value: ${currentCookie.value} <br/>
      Name property of Cookie object: ${currentCookie.value.name} <br/>
      Value property of Cookie object: ${currentCookie.value.value} <br/>
      value of cookie named foobar: ${cookie.foobar.value}<br/>
  </c:forEach>
<br/>
</body>
</html>