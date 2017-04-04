<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Table stats</title>
</head>
<body>
<form action="createtable.jsp" name="form1">
<table style="text-align: left; width: 464px; height: 288px;"
border="1" cellpadding="2" cellspacing="2">
<tbody>
<tr>
<td style="vertical-align: top;">Enter your name<br>
</td>
<td style="vertical-align: top;"><input name="name"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">Enter number of rows<br>
</td>
<td style="vertical-align: top;"><input name="numRow"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">Enter number of columns<br>
</td>
<td style="vertical-align: top;"><input name="numCol"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;"><input name="Submit"
value="Submit" type="submit"><br>
</td>
<td style="vertical-align: top;"><input name="Reset"
value="Reset" type="reset"><br>
</td>
</tr>
</tbody>
</table>
<br>
</form>
<%	 String rowErrors = request.getParameter("rowError");
String name = request.getParameter("name");
if(rowErrors!=null && rowErrors.equals("1")){
	out.println("Hello: " + name + ", PLEASE PROVIDE A ROW VALUE >= 1<br>");
	}
	String columnErrors = request.getParameter("columnError");
	if(columnErrors!=null && columnErrors.equals("1")){
	out.println("Hello: " + name + ", PLEASE PROVIDE A COLUMN VALUE >= 1<br>");
	}
%>
</body>
</html>