<%@page import="Controller.BukuDAO"%>
<jsp:useBean id="b" class="Model.Buku"></jsp:useBean>
<jsp:setProperty property="*" name="b"/>

<%
    BukuDAO.delete(b);
    response.sendRedirect("viewbooks.jsp");
%>