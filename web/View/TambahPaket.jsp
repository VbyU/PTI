<%-- 
    Document   : TambahPaket
    Created on : May 2, 2018, 9:37:04 AM
    Author     : GHOSTMAN
--%>
<%@page import="Model.C_Spot" %>
<%@page import="Model.C_Paket" %>
<%@page import="Model.spotWisata" %>
<%@page import="Model.paketwisata" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <SCRIPT language="javascript">
            function addRow(tableID) {

                var table = document.getElementById(tableID);

                var rowCount = table.rows.length;
                var row = table.insertRow(rowCount);

                var colCount = table.rows[0].cells.length;

                for (var i = 0; i < colCount; i++) {

                    var newcell = row.insertCell(i);

                    newcell.innerHTML = table.rows[0].cells[i].innerHTML;
                    //alert(newcell.childNodes);
                    switch (newcell.childNodes[0].type) {
                        case "select-one":
                            newcell.childNodes[0].selectedIndex = 0;
                            break;
                    }
                }
            }

            function deleteRow(tableID) {
                try {
                    var table = document.getElementById(tableID);
                    var rowCount = table.rows.length;

                    for (var i = 0; i < rowCount; i++) {
                        var row = table.rows[i];
                        var chkbox = row.cells[0].childNodes[0];
                        if (null != chkbox && true == chkbox.checked) {
                            if (rowCount <= 1) {
                                alert("Cannot delete all the rows.");
                                break;
                            }
                            table.deleteRow(i);
                            rowCount--;
                            i--;
                        }


                    }
                } catch (e) {
                    alert(e);
                }
            }

        </SCRIPT>
    </head>
    <body>
        <%
            spotWisata.clear();
            C_Spot.setDaftarSpot();
        %>
        <INPUT type="button" value="Add Row" onclick="addRow('dataTable')" />
        <INPUT type="button" value="Delete Row" onclick="deleteRow('dataTable')" />
        <TABLE id="dataTable" width="350px">
           <!-- <tr>
                <td colspan="2">
                    <input type="text" name="namapaket" value="" required>
                </td>
            </tr><-->
            <TR>
                <TD><INPUT type="checkbox" name="chk"/></TD>
                <TD>
                    <SELECT name="country">
                        <%
                            for (int i = 0; i < spotWisata.getDaftarspotWisata().size(); i++) {
                        %>
                        <OPTION value="<%=spotWisata.getDaftarspotWisata().get(i).getNamaSpot()%>"><%=spotWisata.getDaftarspotWisata().get(i).getNamaSpot()%></OPTION>
                            <%

                                }
                            %>       
                    </SELECT>
                </TD>
            </TR>
           <tr>
                <td colspan="2">
                    <select name="jenis">
                        <option value="kuliner">KULINER</option>
                        <option value="kuliner">WISATA</option>
                    </select>
                </td>
            </tr>
            <!--
            <tr>
                <td colspan="2">
                    <input type="text" name="harga" value="" required>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <textarea>
                </td>
            </tr>
        </TABLE>
<-->
    </body>
</html>
