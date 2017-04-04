<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta content="text/html; charset=ISO-8859-1"
http-equiv="content-type">
<title>create a table!</title>
</head>
<body style="background-color: black; color: rgb(0, 0, 0);"
alink="#ee0000" link="#0000ee" vlink="#551a8b">
<%  String name = request.getParameter("name");
	int numRows = Integer.parseInt(request.getParameter("numRow"));
	int numCols = Integer.parseInt(request.getParameter("numCol"));
	if(numRows<=0){
		response.sendRedirect("classexercise.jsp?rowError=1&AnotherParam=somevalue&name="+name);
	}
	else if(numCols<=0){
		response.sendRedirect("classexercise.jsp?columnError=1&AnotherParam=somevalue&name="+name);
	}
	
	out.println("<span style=\"color: white;\">Hello "+name+". Here is your table!</span>");
%>
<br>
<table style="text-align: left; width: 100px;" border="1"
cellpadding="2" cellspacing="2">
<tbody>
<%
	for(int i=0; i<numRows; i++)
	{
		out.println("<tr>");
		for(int j=0; j<numCols; j++)
		{
			out.println("<td><span style=\"color: white;\">"+(i+1)+","+(j+1)+"</span></td>");
		}
		out.println("</tr>");
	}
%>
</tbody>
</table>

<br>
</body>
</html>