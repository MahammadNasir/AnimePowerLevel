<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<title>Power Level</title>
<link rel="stylesheet" href="style.css">
<jsp:include page="header.jsp"/>
<div class="container">
<h1>${name}</h1><br>
<%
int powerlevel = (Integer) request.getAttribute("powerlevel");
String rank = (String) request.getAttribute("rank");
if(powerlevel < 2000){
%>
<p style="font-size:32px;font-weight:bold;color:red">
Power Level : <%= powerlevel %><br><br>
Rank : <q><%= rank %></q>
</p><br>
<%
}
else if(powerlevel < 5000){
%>
<p style="font-size:32px;font-weight:bold;color:gold">
Power Level : <%= powerlevel %><br><br>
Rank : <q><%= rank %></q>
</p><br>
<%
}
else if(powerlevel < 8000){
%>
<p style="font-size:32px;font-weight:bold;color:blue">
Power Level : <%= powerlevel %><br><br>
Rank : <q><%= rank %></q>
</p><br>
<%
}
else{
%>
<p style="font-size:32px;font-weight:bold;color:green">
Power Level : <%= powerlevel %><br><br>
Rank : <q><%= rank %></q>
</p><br>
<%
}
%>
</div>