<%-- 
    Document   : konfirmasi pembayaran
    Created on : May 1, 2018, 10:55:05 AM
    Author     : Joshua Boanerges
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div id="pembayaran" class="modal">
            <div class="modal-box animate">
                <div class="imgcontainer">
                    <div class="Modal-Tittle">
                        <img src="image/logo.png">
                        <h3>Pembayaran</h3> 
                    </div>
                    <div class="close">
                        
                        <!--<div class="caret"></div>-->
                    </div>



                </div>


                <form action="TransaksiServlet">

                    <div class="input-form">
                        <table >
                            <tr>                      
                                <td>Nama</td>
                                <td></td>
                                <td><input type="text" name="nama_kartu" required="" placeholder="Nama" /></td>  
                                <td></td>
                            </tr>
                            <tr>
                                <td>Nomor Kartu</td>
                                <td></td>
                                <td><input type="text" name="nomor_kartu" pattern="(([0-9]){4}+\-){3}[0-9]" placeholder="xxxx-xxxx-xxxx-xxxx"/></td>  
                                <td></td>
                            </tr>
                            <tr>
                                <td>CVV</td>
                                <td></td>
                                <td><input type="text" name="cvv" required="" pattern="[0-9]{3}" placeholder="xxx"/></td>  
                                <td></td>
                            </tr>
                            <tr>
                                <td> </td>
                                <td> </td>
                                <td>
                                    <button name="btn" value="Login"> Konfirmasi</button>
                                </td>
                            </tr>
                        </table>
                    </div>



                </form>
                <div class="modal-footer"style="height: 69px; " >
                    <button class="daftarbtn fa fa-close" style="margin-top: -2%;" onclick="document.getElementById('pembayaran').style.display = 'none'">Batal</button>
                </div>
            </div>

        </div>