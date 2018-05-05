<%-- 
    Document   : modaltambahbarang
    Created on : Nov 22, 2017, 12:14:05 PM
    Author     : Tetsuya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<link href="dropdown.css" rel="stylesheet" type="text/css"/>

<%
    if (session.getAttribute("pesan") != null || session.getAttribute("cart2") != null) {%>
<div id="1" class="modal" style="display: block;">
    <div class="modal-box">
        <%} else {%>
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

                    <div id="3" class="modal">
                        <div class="modal-box animate">
                            <div class="imgcontainer">
                                <div class="Modal-Tittle">
                                    <img src="image/logo.png">
                                    <h3>Tambah Spot Wisata</h3> 
                                </div>
                                <div class="close">
                                    <button onclick="document.getElementById('3').style.display = 'none'"  title="Close Tambah Makanan" class="fa fa-close"></button>
                                </div>



                            </div>


                            <form action="TambahMakananServlet" method="post" enctype="multipart/form-data">

                                <div class="input-form">
                                    <table>
                                        <tr>                      
                                            <td>Nama Paket</td>
                                            <td></td>
                                            <td><input type="text" name="nama" required="" /></td>  
                                            <td></td>
                                        </tr>
                                        <tr>
                                            <td>Deskripsi</td>
                                            <td></td>
                                            <td><input type="harga" name="harga" /></td>  
                                            <td></td>
                                        </tr>

                                        <tr>     
                                            <td>Jenis Spot </td>
                                            <td></td>
                                            <td><div class="dropdown"></div>

                                                <button onclick="myFunction()" class="dropbtn">Jenis Spot</button> 
                                                <div id="myDropdown" class="dropdown-content">
                                                    <input type="text" placeholder="Search.." id="myInput" onkeyup="filterFunction()">
                                                    <a href="#about">About</a>
                                                    <a href="#base">Base</a>
                                                    <a href="#blog">Blog</a>
                                                    <a href="#contact">Contact</a>
                                                    <a href="#custom">Custom</a>
                                                    <a href="#support">Support</a>
                                                    <a href="#tools">Tools</a>
                                                </div></td>
                                            <td></td>                <script>
                                                /* When the user clicks on the button,
                                                 toggle between hiding and showing the dropdown content */
                                                function myFunction() {
                                                    document.getElementById("myDropdown").classList.toggle("show");
                                                }

                                                function filterFunction() {
                                                    var input, filter, ul, li, a, i;
                                                    input = document.getElementById("myInput");
                                                    filter = input.value.toUpperCase();
                                                    div = document.getElementById("myDropdown");
                                                    a = div.getElementsByTagName("a");
                                                    for (i = 0; i < a.length; i++) {
                                                        if (a[i].innerHTML.toUpperCase().indexOf(filter) > -1) {
                                                            a[i].style.display = "";
                                                        } else {
                                                            a[i].style.display = "none";
                                                        }
                                                    }
                                                }
                                        </script>

                                        </body>
                                        </html>


                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td></td>
                                            <td><textarea name="deskripsi" rows="5" cols="22" required="" style="resize: none;"></textarea></td>
                                            <td></td>
                                        </tr>
                                        <tr>
                                            <td>Gambar</td>
                                            <td></td>
                                            <td><input type="file" name="gambar" id="gambar"required=""/></td>
                                            <td></td>
                                        </tr>
                                        <tr>
                                            <td> </td>
                                            <td> </td>
                                            <td>
                                                <button name="btn" value="tambah"> Tambah</button>
                                            </td>
                                        </tr>
                                    </table>
                                </div>



                            </form>
                            <div class="modal-footer"style="height: 69px; " >

                            </div>
                        </div>

                    </div>
