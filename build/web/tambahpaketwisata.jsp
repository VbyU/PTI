<%-- 
    Document   : tambahpaketwisata
    Created on : May 1, 2018, 10:52:54 AM
    Author     : Joshua Boanerges
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

        
        
        <div id="3" class="modal">
            <div class="modal-box animate">
                <div class="imgcontainer">
                    <div class="Modal-Tittle">
                        <img src="image/logo.png">
                        <h3>Tambah Paket Wisata</h3> 
                    </div>
                    <div class="close">
                        <button onclick="document.getElementById('3').style.display = 'none'"  title="Close Tambah Makanan" class="fa fa-close"></button>
                    </div>



                </div>


                <form action="TambahMakananServlet" method="post" enctype="multipart/form-data">

                    <div class="input-form">
                        <table >
                            <tr>                      
                                <td>tes</td>
                                <td></td>
                                <td><input type="text" name="nama" required="" /></td>  
                                <td></td>
                            </tr>
                            <tr>
                                <td>tes</td>
                                <td></td>
                                <td><input type="harga" name="harga" /></td>  
                                <td></td>
                            </tr>
                            <tr>
                                <td>tes</td>
                                <td></td>
                                <td><input type="text" name="diskon" required=""/></td>  
                                <td></td>
                            </tr>
                            <tr>
                                <td>tes</td>
                                <td></td>
                                <td><textarea name="deskripsi" rows="5" cols="22" required="" style="resize: none;"></textarea></td>  
                                <td></td>
                            </tr>
                            <tr>
                                <td>tes</td>
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
