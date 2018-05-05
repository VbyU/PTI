<%-- 
    Document   : paketwisata
    Created on : May 1, 2018, 4:05:33 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Kamar</title>
    </head>
    <body>
        <%@include file="header.jsp" %>
    <center>
        <h1>Pilihan Paket Wisata</h1>
        <table style="margin-top: 50px ;margin-bottom: 50px">
            <tr>
                <td>
            <center><h1><b>Malioboro</b></h1></center>
            <a href="http://localhost:63506/Project_UAS_WEB/InvokeDetailKamar?method=GET&detail=p1" >
               <img src="image/Malioboro.jpg" width="300" height="250">
            </a>

            <a href="booking.jsp?paket=p1" >
                <center><img src="image/booking.png" width="30" height="30"></center>
            </a>
            <center>Booking</center>
            </td>         

            <td>
            <center><h1><b>Pantai Indrayanti</b></h1></center>
            <a href="http://localhost:63506/Project_UAS_WEB/InvokeDetailKamar?method=GET&detail=p2" >
                <img src="image/Pantai Indrayanti.jpg" width="300" height="250">
            </a>

            <a href="booking.jsp?paket=p2" >
                <center><img src="image/booking.png" width="30" height="30"></center>
            </a>
            <center>Booking</center>
            </td> 

            <td>
            <center><h1><b>Candi Borobudur</b></h1></center>
            <a href="http://localhost:63506/Project_UAS_WEB/InvokeDetailKamar?method=GET&detail=p3" >
                <img src="image/borobudur.jpg" width="300" height="250">
            </a>
            <a href="booking.jsp?paket=p3" >
                <center><img src="image/booking.png" width="30" height="30"></center>
            </a>
            <center>Booking</center>
        </td> </tr>  
        <tr><td></td></tr>
        <tr><td></td></tr>
        <tr><td></td></tr>
        <tr><td></td></tr>
           
            <tr> <td>
            <center><h1><b>Hutan Pinus Pengger</b></h1></center>
            <a href="http://localhost:63506/Project_UAS_WEB/InvokeDetailKamar?method=GET&detail=p2" >
                <img src="image/pengger.PNG" width="300" height="250">
            </a>

            <a href="booking.jsp?paket=p2" >
                <center><img src="image/booking.png" width="30" height="30"></center>
            </a>
            <center>Booking</center>
        </td> 

            <td>
            <center><h2><b>Air Terjun Kedung Kandang</b></h2></center>
            <a href="http://localhost:63506/Project_UAS_WEB/InvokeDetailKamar?method=GET&detail=p3" >
                <img src="image/kedungkandang.PNG" width="300" height="250">
            </a>
            <a href="booking.jsp?paket=p3" >
                <center><img src="image/booking.png" width="30" height="30"></center>
            </a>
            <center>Booking</center>

            </td> 
             <td>
            <center><h1><b>Watu Giring</b></h1></center>
            <a href="http://localhost:63506/Project_UAS_WEB/InvokeDetailKamar?method=GET&detail=p2" >
                <img src="image/watugiring.PNG" width="300" height="250">
            </a>

            <a href="booking.jsp?paket=p2" >
                <center><img src="image/booking.png" width="30" height="30"></center>
            </a>
            <center>Booking</center>
            </td> 
        </tr>
         <tr><td></td></tr>
        <tr><td></td></tr>
        <tr><td></td></tr>
        <tr><td></td></tr>
        
                 <tr> <td>
            <center><h1><b>Pintu Langit Dahromo</b></h1></center>
            <a href="http://localhost:63506/Project_UAS_WEB/InvokeDetailKamar?method=GET&detail=p2" >
                <img src="image/dahromo.PNG" width="300" height="250">
            </a>

            <a href="booking.jsp?paket=p2" >
                <center><img src="image/booking.png" width="30" height="30"></center>
            </a>
            <center>Booking</center>
        </td> 

            <td>
            <center><h2><b>Gumur Pasir Parangkusumo</b></h2></center>
            <a href="http://localhost:63506/Project_UAS_WEB/InvokeDetailKamar?method=GET&detail=p3" >
                <img src="image/gumukpasir.PNG" width="300" height="250">
            </a>
            <a href="booking.jsp?paket=p3" >
                <center><img src="image/booking.png" width="30" height="30"></center>
            </a>
            <center>Booking</center>

            </td> 
             <td>
            <center><h1><b>Watu Payung</b></h1></center>
            <a href="http://localhost:63506/Project_UAS_WEB/InvokeDetailKamar?method=GET&detail=p2" >
                <img src="image/watupayung.PNG" width="300" height="250">
            </a>

            <a href="booking.jsp?paket=p2" >
                <center><img src="image/booking.png" width="30" height="30"></center>
            </a>
            <center>Booking</center>
            </td> 
        </tr>
        
        </table>
    </center>
    <center><footer><b><%@include file="footer.jsp" %></b></footer></center>
</body>
</html>