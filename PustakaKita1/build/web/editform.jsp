<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Edit Form</title>
    </head>
    <body>
        <%@page import="Controller.BukuDAO,Model.Buku"%>

        <%
            String id = request.getParameter("id_buku");
            Buku b = BukuDAO.getRecordById(Integer.parseInt(id));
        %>

        <h1>Edit Form</h1>
        <form action="editbook.jsp" method="post">
            <input type="hidden" name="id" value="<%=b.getId()%>"/>
            <table>
                <tr><td>Judul Buku:</td><td><input type="text" name="judul" value="<%= b.getJudul()%>"/></td></tr>
                <tr><td>Penulis:</td><td><input type="text" name="penulis" value="<%= b.getPenulis()%>"/></td></tr>
                <tr><td>Penerbit:</td><td><input type="text" name="deskripsi" value="<%= b.getDeskripsi()%>"/></td></tr>
                <tr><td>Harga:</td><td><input type="text" name="harga" value="<%= b.getHarga()%>"/></td></tr>
                <tr><td>Stok:</td><td><input type="text" name="gambar" value="<%= b.getGambar()%>"/></td></tr>
                <tr><td colspan="2"><input type="submit" value="Edit Book"/></td></tr>
            </table>
        </form>
    </body>
</html>