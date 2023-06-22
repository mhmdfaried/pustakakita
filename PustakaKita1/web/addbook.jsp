<%@page import="Controller.BukuDAO"%>
<jsp:useBean id="b" class="Model.Buku"></jsp:useBean>
<jsp:setProperty property="*" name="b"/>

<%
    int i = BukuDAO.save(b);
    if (i > 0) {
        response.sendRedirect("addbook-success.jsp");
    } else {
        response.sendRedirect("addbook-error.jsp");
    }
%>