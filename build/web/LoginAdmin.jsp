<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <style> 
        input[type=text], input[type=password], input[type=date], select{
            width: 150%;
            padding: 12px 20px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            box-sizing: border-box;

        }
        button {
            background-color: #4CAF50;
            font-color: black;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            cursor: pointer;
            width: 100%;
            color:white;
        }
        .a{
            
        }
        footer {

            text-align: center;
            position: fixed;
            width: 100%;
            bottom: 0px;
            top : auto;
            margin-top: 50rem;
        }
    </style>

     <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>DVS Tour </title>
        <link rel="stylesheet" type="text/css" href="home.css" media="screen"/>
    </head>
    <body>
        <div id="wrap">
            <div id="header">
<!--                <img src="img/hotel indonesialogo.jpg">-->
                <h1>DVS Tour</h1>
                <h2>Jl. Sosrowijayan No.9, Sosromenduran, Gedong Tengen, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55271</h2>
                <h3>Telepon (0411) 320707 Fax: (0411) 324475</h3>

            </div>

            <div id="menu">
                <ul>
                     <li><a href="Home.jsp" >Home</a></li>
              
                        <%
//                            String status = (String) session.getAttribute("rname");
//                            if (status != null) {
                        %>
                    <!--<li><a href="LogoutAdmin">Logout</a></li>-->
                        <%
//                        } else {
                        %>
                    <!--<li><a href="LoginAdmin.jsp" >Login</a></li>-->    
                        <%
//                            }
                        %>
                    <li><a href=""></a></li>
                </ul>
            </div>


            <div style="clear: both; "> </div>
        </div>
    </div>  
<center><h1><b>LOGIN ADMIN</b></h1>

     <form action="LoginAdminServlet" method="POST">
            <% try {
                    if (request.getParameter("error").equals("y")) {
            %>
            <h5 style="color:red">ID/Password salah!</h5>
            <%
                    }
                } catch (Exception ex) {
                }
            %>
            
            <table align="center" cellspacing="20">
                
                <tr><td>Username: </td>
                    <td><input type="text" placeholder="Masukkan Username" required="" name="id" value=""> </td></tr>
                <tr></tr>

                <tr><td>Password: </td>
                    <td><input type="password" placeholder="Masukkan Password" required="" name="password" value="">
                    </td></tr>

                <tr><td><td><button type="submit"><a>Login</a></button>
                    </td></td></tr>   
            </table>
        </form>
<!--    <table align="center" cellspacing="20">
        <tr>
            <td>Belum punya akun?</td>
            <td><a href="DaftarAccount.jsp"><button>Daftar</button></a></td>
            <td></td>
        </tr>
    </table>        -->
 <footer style="margin-top: 96px"> <%@include file="footer.jsp" %></footer>
</body>
</html>


