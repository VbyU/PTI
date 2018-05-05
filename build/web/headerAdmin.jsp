<%-- 
    Document   : headerAdmin
    Created on : May 2, 2018, 8:02:21 AM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<style>
    .dropdown-content {
        display: none;
        position: absolute;
        background-color: #f9f9f9;
        min-width: 80px;
        box-shadow: 0px 8px 10px 0px rgba(0,0,0,0.2);
        z-index: 1;
    }
    .dropdown-content a {
        color: black;
        padding: 12px 16px;
        text-decoration: none;
        display: block;
    }
    
    .dropdown:hover .dropdown-content {
    display: block;
    background-color: #000080;
}

.dropdown:hover .dropbtn {
    background-color: #000080;
}

</style>
<html>
   <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>DVS Tour </title>
        <link rel="stylesheet" type="text/css" href="home.css" media="screen"/>
    </head>
    <body>
        <div id="wrap">
            <div id="header">
                <!--                <img src="img/hotel indonesialogo.jpg">-->
                <h1>DVS TOUR</h1>
                <h2>Jl. Kalimantan No. 9, Sosromenduran, Gedong Tengen,
                    Kota Yogyakarta, Daerah Istimewa Yogyakarta 55271</h2>
                <h3>Telepon (0411) 320707 Fax: (0411) 324475</h3>
                <a href="../../../../AppData/Local/Temp/Login.URL"></a>
            </div>

            <div id="menu" >
                <ul>
                    <li><a href="#" >Home</a></li>
<!--                     <li><a href="wisata.jsp" >Wisata</a></li>-->
                    <li><div class="dropdown">
                            <a class="dropdown">Paket</a>
                            <div class="dropdown-content">
                                <a href="#/">Tambah</a>
                                <a href="#">Edit</a>
                                 <a href="#">Hapus</a>
                                
                    <li><div class="dropdown">
                            <a class="dropdown">Spot</a>
                            <div class="dropdown-content">
                                <a href="View/TambahSpot.jsp">Tambah</a>
                                <a href="View/LihatSpot.jsp">Edit</a>
                     <li><a href="LoginAdmin.jsp" >Logout</a></li>
                    
<!--                    <li><a href="wisata.jsp" >Wisata</a></li>-->
<!--                    <li><div class="dropdown">
                            <a class="dropdown">Paket</a>
                            <div class="dropdown-content">
                                <a href="paketkuliner.jsp">Kuliner</a>
                                <a href="paketwisata.jsp">Wisata</a>-->
                            </div>
                        </div></li>
                        <%
                            String status = (String) session.getAttribute("rname");
                            if (status != null) {
                        %>
                    <li><a href="LogoutServlet">Logout</a></li>
                         %>
                       <%
                        } else {
                        %>
<!--                <li><a href="LoginAdmin.jsp" >Login Admin</a></li>   -->
                        <%
                            }
                        %>
<!--                    <li><a href=""></a></li>
                    <form  action="./searchServlet" method="GET" style="float: right">
                        <input style="padding:7px 15px;
                               background:rgba(50, 50, 50, 0.2);
                               /*border:0px solid #dbdbdb;*/
                               background-color: white;
                               " 
                               type="text" name="cari" placeholder="Cari..." required>	
                        <input style="  position:relative;
                               padding:5px 16px;
                               left:-0px;
                               border:2px solid #000000;
                               background-color:#000000;
                               color:#fafafa;" 
                               type="submit"  value="Cari">		
                    </form>                   
                    <a  style="float: right" href="Troli.jsp">
                        <img width="30" height="30" src="image/Troli.png">
                    </a>-->
                </ul>
            


            <div style="clear: both; "> </div>
        </div>
    </div>                    
</body>

</html>
