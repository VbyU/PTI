<%-- 
    Document   : TambahSpot
    Created on : Apr 28, 2018, 3:10:23 PM
    Author     : GHOSTMAN
--%>
<%@page import="Model.C_Spot"%>
<%@page import="Model.spotWisata"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>EDIT SPOT</h1>
       
             <%
                 String id = request.getParameter("out");
                 spotWisata.clear();
                 C_Spot.setDaftarSpot();
                 for (int i = 0; i < spotWisata.getDaftarspotWisata().size(); i++) {
                         if(spotWisata.getDaftarspotWisata().get(i).getIdSpot().equals(id)){
                         
                     
             %>
              <form action="../S_EditSpot?out=<%=id%>" method="post" enctype="multipart/form-data" name="form">
             <table>
                <tr>
                    <td>
                        Nama Spot
                    </td>
                    <td>
                        <input type="text" name="nama" value="<%=spotWisata.getDaftarspotWisata().get(i).getNamaSpot()%>" required>
                    </td>
                </tr>
                <tr>
                    <td>
                        Deskripsi
                    </td>
                    <td>
                        <textarea rows="5" cols="50" name="deskripsi" value="" required><%=spotWisata.getDaftarspotWisata().get(i).getDeskripsi()%></textarea>
                    </td>
                </tr>
                <tr>
                    <td>
                        Upload Foto
                    </td>
                    <td>
                        <input type="file" id="files" name="files" size="37" accept="image/*" value="Gambar/<%=id%>">
                    </td>
                </tr>
                <tr>
                        <td><div></div></td>
                        <td> <div><button class="btn btn-block btn-info"><span class="fa fa-floppy-o"style="font-size:24px;color:white"></span> SIMPAN</button></div></td>
                    </tr>
            </table>
        </form>
    </body>
    <%
    }
}
    %>
</html>
