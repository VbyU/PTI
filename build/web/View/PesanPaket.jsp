<%-- 
    Document   : PesanPaket
    Created on : May 5, 2018, 1:35:13 PM
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
        <h1>PESAN PAKET</h1>
        <form action="../S_PesanPaket" method="post">
            <table>
                <tr>
                    <td>
                        Nama Pemesan
                    </td>
                    <td>
                        <input type="text" name="namapemesan" value="">   
                    </td>
                </tr>
                <tr>
                    <td>
                        Jumlah
                    </td>
                    <td>
                        <input type="number" name="jumlah" value="">   
                    </td>
                </tr>
                <tr>
                    <td>
                        Tanggal 
                    </td>
                    <td>
                        <input type="date" name="tanggal" value="">   
                    </td>
                </tr>
                <tr>
                    <td>
                        No Telepon
                    </td>
                    <td>
                        <input type="text" name="telepon" value="">   
                    </td>
                </tr>
                <tr>
                    <td>
                        Email
                    </td>
                    <td>
                        <input type="text" name="email" value="">   
                    </td>
                </tr>
                <tr>
                    <td>
                        Total Bayar
                    </td>
                    <td>
                        <input type="text" name="totalbayar" value="">   
                    </td>
                </tr>
            </table>
        </form>
    </body>
</html>
