<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <style> 
        /*        input[type=text], input[type=password], input[type=date], select{
                    width: 150%;
                    padding: 12px 20px;
                    margin: 8px 0;
                    display: inline-block;
                    border: 1px solid #ccc;
                    box-sizing: border-box;
        
                }*/
        

        /*        footer {
        
                    text-align: center;
                    position: fixed;
                    width: 100%;
                    bottom: 0px;
                    top : auto;
                    margin-top: 50rem;
                }*/
    </style>
    <head>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>

    <body>
        <%@include file="header.jsp" %>
        <form action="LoginServlet" method="post">
            <center>
                <table align="center">
                    <tr>
                        <td> </td>
                        <td>
                            <%try {
                                    if (request.getParameter("error").equals("y")) {

                            %> <h5 style="color:red"> Userrname/password incorrect, 
                                <a href="DaftarAccount.jsp"> Buat Akun ?</a></h5>

                            <%                                 }
                                } catch (Exception ex) {
                                }
                            %>

                            <%try {
                                    if (request.getParameter("create").equals("yes")) {

                            %> <h5 style="color:blue"> Akun berhasil dibuat, Silahkan Login</h5>

                            <%                                 }
                                } catch (Exception ex) {
                                }
                            %>

                            <%try {
                                    if (request.getParameter("create").equals("no")) {

                            %> <h5 style="color:red"> Akun gagal dibuat</h5>

                            <%                                 }
                                } catch (Exception ex) {
                                }
                            %>

                            <%try {
                                    if (request.getParameter("out").equals("y")) {
                                        session.removeAttribute("rname");
                                        session.invalidate();

                            %><h5 style="color:red"> Anda telah logout </h5>
                            <%                                }
                                } catch (Exception ex) {
                                }
                            %>

                        </td>
                    </tr>
                </table>

                <table align="center" cellspacing="20">
                    <tr>
                        <td> Username</td>
                        <td> <input  style="
                                     width: 150%;
                                     padding: 12px 20px;
                                     margin: 8px 0;
                                     display: inline-block;
                                     border: 1px solid #ccc;
                                     box-sizing: border-box;
                                     "type="text" name="username" required=""></td>
                    </tr>
                    <tr>
                        <td> Password </td>
                        <td> <input style="
                                    width: 150%;
                                    padding: 12px 20px;
                                     margin: 8px 0;
                                    display: inline-block;
                                    border: 1px solid #ccc;
                                    box-sizing: border-box;
                                    " type="password" name="password" required=""></td>
                    </tr>
                    <tr>
                        <td> </td>
                        <td><button>Login</button></td>

                    </tr>
                </table>
            </center>
        </form>   
        <table align="center" cellspacing="20">
<!--            <tr>
                <td>Belum punya akun?</td>
                <td><a href="DaftarAccount.jsp"><button>Daftar</button></a></td>
                <td></td>
            </tr>-->
        </table>      
       <footer style="margin-top: 79px"> <%@include file="footer.jsp" %></footer>
    </body>
</html>

