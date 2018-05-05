<%-- 
    Document   : modallogin
    Created on : May 1, 2018, 10:37:59 AM
    Author     : Joshua Boanerges
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>



<% 
    if (session.getAttribute("pesan")!=null||session.getAttribute("cart2")!=null) {%>
<div id="1" class="modal" style="display: block;">
    <div class="modal-box">
<%}else{%>
<div id="1" class="modal">
    <div class="modal-box animate">
    <%}%> 

 
            
                <div class="imgcontainer">
                    <div class="Modal-Tittle">
                        <img src="image/logo.png">
                        <h3>Masuk</h3> 
                    </div>
                    <div class="close">
                        <button onclick="document.getElementById('1').style.display = 'none'"  title="Close Login">x</button>
                        <!--<div class="caret"></div>-->
                    </div>



                </div>


                <form action="LoginServlet">

                    <div class="input-form">
                        <table >
                            <tr>                      
                                <td>Username</td>
                                <td></td>
                                <td><input type="text" name="username" required=""/></td>  
                                <td></td>
                            </tr>
                            <tr>
                                <td>Password</td>
                                <td></td>
                                <td><input type="password" name="password" value="" id="password" required=""/></td>  
                                <td></td>
                            </tr>
                            <tr>
                                <td> </td>
                                <td> </td>
                                <td>
                                    <input type="checkbox" onclick="myFunction()">Show Password
                                </td>
                            </tr>
                            <%if (session.getAttribute("pesan")!=null) {%>
                            <tr>
                                <td> </td>
                                <td> </td>
                                <td>
                                    <h5 style="color: red;">Wrong Username or Password</h5>
                                </td>
                            </tr>
                            <%}%>
                            <tr>
                                <td> </td>
                                <td> </td>
                                <td>
                                    <button name="btn" value="Login"> Masuk</button>
                                </td>
                            </tr>
                        </table>
                    </div>



                </form>
                <div class="modal-footer" >
                    <button class="daftarbtn" onclick="document.getElementById('2').style.display='block'; document.getElementById('1').style.display='none'">Daftar</button>
                </div>
            </div>

        </div>

        <script>
            function myFunction() {
                var x = document.getElementById("password");
                if (x.type === "password") {
                    x.type = "text";
                } else {
                    x.type = "password";
                }
            }


        </script>
