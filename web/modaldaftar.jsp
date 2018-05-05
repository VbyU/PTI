
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div id="2" class="modal">
            <div class="modal-box animate">
                <div class="imgcontainer">
                    <div class="Modal-Tittle">
                        <img src="image/logo.png">
                        <h3>Daftar</h3> 
                    </div>
                    <div class="close">
                        <button onclick="document.getElementById('2').style.display = 'none'"  title="Close Daftar">x</button>
                        <!--<div class="caret"></div>-->
                    </div>



                </div>


                <form action="RegisterServlet">

                    <div class="input-form">
                        <table >
                            <tr>                      
                                <td>Nama Depan</td>
                                <td></td>
                                <td><input type="text" name="nama_depan" required="" /></td>  
                                <td></td>
                            </tr>
                            <tr>
                                <td>Nama Belakang</td>
                                <td></td>
                                <td><input type="text" name="nama_be;akang" /></td>  
                                <td></td>
                            </tr>
                            <tr>
                                <td>Tanggal Lahir</td>
                                <td></td>
                                <td><input type="date" name="tanggal_lahir" required=""/></td>  
                                <td></td>
                            </tr>
                            <tr>
                                <td>Nomer Telpon</td>
                                <td></td>
                                <td><input type="text" name="no_telpon" required=""/></td>  
                                <td></td>
                            </tr>
                            <tr>
                                <td>Email</td>
                                <td></td>
                                <td><input type="text" name="email" required=""/></td>  
                                <td></td>
                            </tr>
                            <tr>
                                <td>Password</td>
                                <td></td>
                                <td><input type="password" name="password" value=""  required=""/></td>  
                                <td></td>
                            </tr>
                            <tr>
                                <td>Confirm Password</td>
                                <td></td>
                                <td><input type="password" name="cpassword" value=""  required=""/></td>  
                                <td></td>
                            </tr>
                           
                            <tr>
                                <td> </td>
                                <td> </td>
                                <td>
                                    <button name="btn" value="Login"> Daftar</button>
                                </td>
                            </tr>
                        </table>
                    </div>



                </form>
                <div class="modal-footer"style="height: 69px; " >
                    
                </div>
            </div>

        </div>

        
