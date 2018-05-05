<%-- 
    Document   : LihatSpor
    Created on : May 1, 2018, 12:14:47 PM
    Author     : GHOSTMAN
--%>
<%@page import="Model.C_Spot"%>
<%@page import="Model.spotWisata"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            textarea {
                resize: none;
            }
        </style>

    </head>
    <body>
        <br>
        <div class="row">
            <%
                session.removeAttribute("loc");
                session.setAttribute("loc", "View/LihatSpot.jsp");
                /*String id2 = request.getParameter("page");
                int a = 0;
                String aa = "";
                if (id2 == null || id2 == "0") {
                    a = 0;
                } else {
                    a = Integer.parseInt(request.getParameter("page"));
                }

                spotWisata.clear();
                spotWisata.setDaftarspotWisata(daftarspotWisata);
                int c = 0;
                c = a + 9;
                for (int i = 0; i < Roti.getJenis().size(); i++) {
                    if (a <= i && i <= c) {*/
            %>

            <%
                spotWisata.clear();
                C_Spot.setDaftarSpot();
                for (int i = 0; i < spotWisata.getDaftarspotWisata().size(); i++) {
            %>
            <div class="col-sm-3">
                <div class="thumbnail">
                    <center>
                        <table>
                            <tr>

                                <td colspan="2" align="center" style="font-size: 20pt;"><div><%=spotWisata.getDaftarspotWisata().get(i).getNamaSpot()%></div></td>
                            </tr>
                            <tr>
                                <%
                                    String id = spotWisata.getDaftarspotWisata().get(i).getIdSpot();
                                %>
                                <td colspan="2"><div><center><img src="Gambar/<%=id%>" width="306" height="150"> </center></div></td>
                            </tr>
                            <tr>
                                <td colspan="2" align="center" style="font-size: 10pt;"><div><textarea value="" cols="44"><%=spotWisata.getDaftarspotWisata().get(i).getDeskripsi()%></textarea></div></div></td>
                            </tr>
                            <tr>
                                <td width="50%" align="left">
                                    <form action="EditSpot.jsp?out=<%=id%>" method="POST">
                                        <button class="btn btn-block btn-info" >EDIT</button>
                                    </form>
                                </td>
                                <td width="50%" align="right">
                                    <form action="../S_HapusSpot?out=<%=id%>" method="POST">
                                        <button class="btn btn-block btn-danger" onclick="return confirm('Hapus Spot?')">HAPUS</button>

                                    </form>
                                </td>
                            </tr>
                            <tr>

                            </tr>

                        </table>

                    </center>
                </div>

            </div>

            <%
                }


            %>
        </div>

    </body>
</body>
</html>
