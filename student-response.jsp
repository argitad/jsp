<html>

<head><title>Student Confirmation Title</title></head>

<body>

The student is confirmed: ${param.firstName} ${param.lastName}
<br/><br/>
The student's country: ${param.country }
<br/><br/>
The student's English level is: ${param.languageLevel }
<br/><br/>
The student's favorite programming languages are: <br>
<!-- display list of favorite programming languages -->
<ul>
<%
   String[] langs=request.getParameterValues("favoriteLanguage");

   if (langs != null) {
     for (String tempLang: langs) {
	   out.println("<li>"+tempLang+"</li>");
     }
   }
%>
</ul>
</body>

</html>