<%-- 
    Document   : footer
    Created on : Jun 4, 2017, 11:20:06 AM
    Author     : E5
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <style >  footer {

            /*            text-align: center;
                        
                        width: 100%;
                        bottom: 0px;
                        top : auto;
                        margin-top: 50rem;
                        background-color: #33ffff;
                        width: 7
                        margin: 0 auto;*/

            bottom: 0px;
            background: rgb(0, 191, 255); 
            color: black;
            margin-top: 50px ;
            margin-bottom: 50px;
            position: relative;

            
            height: 60px;
            margin: 0 auto;
            width: 965px;
            font-family: "Font Digital";
            src: fonts('glyphicons-halflings-regular.ttf');


        }</style>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <center>
        <table>
            <thead>
                <tr>
            <b><p>Copyright USD 2017</p></b>
            </tr>
            </thead>
            <tbody>
                <tr>
                    <td><a href="lokasi.jsp" target="frame">
                            <img src="image/googlemap.jpg" width="25" height="25" />
                        </a></td>
                    <td><img src="image/t-icn.png"  usemap="#sosmed" width="75" height="25">

                        <map name="sosmed">
                            <area shape="circle" coords="0,0,20" alt="fb"  href="https://www.facebook.com/">
                            <area shape="circle" coords="20,0,20" alt="twitter" href="https://twitter.com/">
                            <area shape="circle" coords="40,0,20" alt="gmail" href="https://mail.google.com/">
                        </map></td> 
                </tr>

            </tbody>
        </table>

    </center>

</body>
</html>
