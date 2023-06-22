<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@include file="header.jsp" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Buku Mahardika</title>
    </head>
    <body>
        <center>
        <%
            String name = (String) request.getAttribute("uName");
            if (name != null) {
        %>
        <h1>Hi welcome <%=name%> </h1>    
        <%
            }
        %>
        
        <span>
                <a class="btn btn-success" href="addbookform.jsp" style="width: 195px;">Add Book</a>
        </span>
        
        <span>
                <a class="btn btn-success" href="viewbooks.jsp" style="width: 195px;">View Book</a>
        </span>
        
       
        
        </center>
    </body>
</html>
<%@include file="footer.jsp" %>