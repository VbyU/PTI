<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include  file="header.jsp" %>


    </head>
    <body>
        <%

            RequestDispatcher rd = null;
            if (c.getLoginedAdmin(session) != null) {%>
        <%@include file="headeradmin.jsp" %>
        <%@include file="menuadmin.jsp" %>
        <%@include file="contenadmin.jsp" %>
        <%@include  file="modaltambahmakanan.jsp" %>
        <%@include  file="modalEditMakanan.jsp" %>
        <%} else {
            if (c.getLoginedUser(session) != null) {%>
        <%@include file="headerpembeli.jsp" %>
        <%} else {%>
        <%@include file="headerutama.jsp" %>
        <%@include file="modallogin.jsp" %>
        <%@include file="modaldaftar.jsp" %>
        <%}%>
        <%@include file="menu.jsp" %>
        <%@include file="halamanutama.jsp" %>


        <%}%>
        <%@include file="copyright.jsp" %>
    </body>
</html>
