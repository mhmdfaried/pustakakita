<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Tampilan Data</title>
    </head>
    <body>
        <%@page import="Controller.BukuDAO,Model.Buku,java.util.*"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
        <h1>Books List</h1>
        <%
            List<Buku> list = BukuDAO.getAllRecords();
            request.setAttribute("list", list);
        %>
        <table border="1" width="90%">
            <tr><th>Id</th><th>Judul</th><th>Penulis</th><th>Penerbit</th><th>Harga</th><th>Stok</th><th>Edit</th><th>Delete</th></tr>
                    <c:forEach items="${list}" var="b">
                <tr><td>${b.getId()}</td><td>${b.getJudul()}</td><td>${b.getPenulis()}</td><td>${b.getDeskripsi()}</td><td>${b.getHarga()}</td><td>${b.getGambar()}</td><td><a href="editform.jsp?id_buku=${b.getId()}">Edit</a></td><td><a href="deletebook.jsp?id=${b.getId()}">Delete</a></td></tr>
            </c:forEach>
        </table>
        <br/><a href="addbookform.jsp">Add New Book</a>

    </body>
</html>