<%-- 
    Document   : paketkuliner
    Created on : May 1, 2018, 7:27:30 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Paket Kuliner</title>
    </head>
    <body>
        <%@include file="header.jsp" %>
    <center>
        <h1>Pilihan Paket Kuliner</h1>
        <table style="margin-top: 50px ;margin-bottom: 50px">
            <tr>
                <td>
            <center><h1><b>Gudeg</b></h1></center>
            <a href="http://localhost:63506/Project_UAS_WEB/InvokeDetailKamar?method=GET&detail=k1" >
                <img src="image/gudeg.jpg" width="300" height="250">
            </a>
            <a href="booking.jsp?kamar=k1" >
                <center><img src="image/booking.png" width="30" height="30"></center>
            </a>
            <center>Booking</center>
            </td>               
            <td>
            <center><h1><b>Krecek</b></h1></center>
            <a href="http://localhost:63506/Project_UAS_WEB/InvokeDetailKamar?method=GET&detail=k2" >
                <img src="image/krecek.PNG" width="300" height="250">
            </a>

            <a href="booking.jsp?kamar=k2" >
                <center><img src="image/booking.png" width="30" height="30"></center>
            </a>
            <center>Booking</center>


            </td>               
            <td>
            <center><h1><b>Bakpia</b></h1></center>
            <a href="http://localhost:63506/Project_UAS_WEB/InvokeDetailKamar?method=GET&detail=k3" >
                <img src="image/bakpia.PNG" width="300" height="250">
            </a>

            <a href="booking.jsp?kamar=k2" >
                <center><img src="image/booking.png" width="30" height="30"></center>
            </a>
            <center>Booking</center>
        </td></tr>
        <tr><td></td></tr>
        <tr><td></td></tr>
        <tr><td></td></tr>
        <tr><td></td></tr>
        
            <tr> <td>
            <center><h1><b>Bakmi Jogja</b></h1></center>
            <a href="http://localhost:63506/Project_UAS_WEB/InvokeDetailKamar?method=GET&detail=p2" >
                <img src="image/bakmi.PNG" width="300" height="250">
            </a>

            <a href="booking.jsp?paket=p2" >
                <center><img src="image/booking.png" width="30" height="30"></center>
            </a>
            <center>Booking</center>
        </td> 

            <td>
            <center><h2><b>Geplak</b></h2></center>
            <a href="http://localhost:63506/Project_UAS_WEB/InvokeDetailKamar?method=GET&detail=p3" >
                <img src="image/geplak.PNG" width="300" height="250">
            </a>
            <a href="booking.jsp?paket=p3" >
                <center><img src="image/booking.png" width="30" height="30"></center>
            </a>
            <center>Booking</center>

            </td> 
             <td>
            <center><h1><b>Cenil</b></h1></center>
            <a href="http://localhost:63506/Project_UAS_WEB/InvokeDetailKamar?method=GET&detail=p2" >
                <img src="image/cenil.PNG" width="300" height="250">
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
            <center><h1><b>Oseng - Oseng Mercon</b></h1></center>
            <a href="http://localhost:63506/Project_UAS_WEB/InvokeDetailKamar?method=GET&detail=p2" >
                <img src="image/osengmercon.PNG" width="300" height="250">
            </a>

            <a href="booking.jsp?paket=p2" >
                <center><img src="image/booking.png" width="30" height="30"></center>
            </a>
            <center>Booking</center>
        </td> 

            <td>
            <center><h2><b>Gatot Gunungkidul</b></h2></center>
            <a href="http://localhost:63506/Project_UAS_WEB/InvokeDetailKamar?method=GET&detail=p3" >
                <img src="image/gatot.PNG" width="300" height="250">
            </a>
            <a href="booking.jsp?paket=p3" >
                <center><img src="image/booking.png" width="30" height="30"></center>
            </a>
            <center>Booking</center>

            </td> 
             <td>
            <center><h1><b>Nasi Tiwul</b></h1></center>
            <a href="http://localhost:63506/Project_UAS_WEB/InvokeDetailKamar?method=GET&detail=p2" >
                <img src="image/tiwul.PNG" width="300" height="250">
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