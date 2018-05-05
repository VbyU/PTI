<%-- 
    Document   : TambahSpot
    Created on : Apr 28, 2018, 3:10:23 PM
    Author     : GHOSTMAN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>TAMBAH SPOT</h1>
         <form action="../S_TambahSpot" method="post" enctype="multipart/form-data" name="form">
            <table>
                <tr>
                    <td>
                        Nama Spot
                    </td>
                    <td>
                        <input type="text" name="nama" value="" required>
                    </td>
                </tr>
                <tr>
                    <td>
                        Deskripsi
                    </td>
                    <td>
                        <textarea rows="5" cols="50" name="deskripsi" value="" required></textarea>
                    </td>
                </tr>
                <tr>
                    <td>
                        Upload Foto
                    </td>
                    <td>
                        <input type="file" id="files" name="files" size="37" accept="image/*">
                    </td>
                </tr>
                <tr>
                        <td><div></div></td>
                        <td> <div><button class="btn btn-block btn-info"><span class="fa fa-floppy-o"style="font-size:24px;color:white"></span> SIMPAN</button></div></td>
                    </tr>
            </table>
        </form>
    </body>
</html>
