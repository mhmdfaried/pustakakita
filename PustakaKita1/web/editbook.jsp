<%@page import="Controller.BukuDAO"%>
<jsp:useBean id="b" class="Model.Buku"></jsp:useBean>
<jsp:setProperty property="*" name="b"/>

<%
    int i = BukuDAO.update(b);
    response.sendRedirect("viewbooks.jsp");
%>