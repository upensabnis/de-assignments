<%-- 
    Document   : index
    Created on : Jan 26, 2015, 9:23:53 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="jquery-1.11.2.js"></script>
        <script>
            function putPressed(){
                 var pid = document.getElementById("pid").value;
                 var pname = document.getElementById("pname").value;
                 var pbdate = document.getElementById("pbdate").value;
                 var pemail = document.getElementById("pemail").value;
                 var pcontact = document.getElementById("pcontact").value;
                 var ptw = document.getElementById("ptw").value;
                    
                 var student = "{\"stdid\":"+ pid +",\"stdname\":\""+ pname +"\",\"stdbirth\":"+ pbdate +",\"stdemail\":\""+ pemail +"\",\"stdcontact\":\""+ pcontact +"\",\"stdtwitter\":\""+ ptw +"\"}";
                 
                 //if(pid != "" && pname != "" && pbdate != "" && pemail != "" && pcontact != "" && ptm != "") {
                    $.ajax({
                        type: "PUT",
                        url: "http://localhost:8080/StudentDB/webresources/entities.student/?",
                        contentType: "application/json",
                        dataType:"json",
                        data :student,
                        success: function(dat){alert("Successfully updated the student");},
                        failure: function(errMsg){alert("Some error occurred while updating");}
                    })
                 //} else {
                 //   alert("Enter all the information");
                 //}
            }
            
            function postPressed(){
                 var name = document.getElementById("name").value;
                 var bdate = document.getElementById("bdate").value;
                 var email = document.getElementById("email").value;
                 var contact = document.getElementById("contact").value;
                 var tw = document.getElementById("tw").value;
                     
                 var student = "{\"stdid\":3,\"stdname\":\""+ name +"\",\"stdbirth\":"+ bdate +",\"stdemail\":\""+ email +"\",\"stdcontact\":\""+ contact +"\",\"stdtwitter\":\""+ tw +"\"}";
                 //if(name != "" && bdate != "" && email != "" && contact != "" && tm != "") {
                    $.ajax({
                        type: "POST",
                        url: "http://localhost:8080/StudentDB/webresources/entities.student/?",
                        contentType: "application/json",
                        dataType:"json",
                        data :student,
                        success: function(dat){alert("Successfully added the user");},
                        failure: function(errMsg){alert("Error occurred while adding the student");}
                    })
                 //} else {
                 //   alert("Enter all the information");
                 //}
            }
            
            function getPressed(){
                 var getid = document.getElementById("getid").value;
                 if(getid != "") {
                 $.ajax({
                        type: "GET",
                        url: "http://localhost:8080/StudentDB/webresources/entities.student/"+getid+"?",
                        contentType: "application/json",
                        dataType:"json",
                        success: function(dat){alert("Success : "+JSON.stringify(dat));},
                        failure: function(errMsg){alert("Error : "+errMsg);}
                    })
                 } else {
                    $.ajax({
                        type: "GET",
                        url: "http://localhost:8080/StudentDB/webresources/entities.student/?",
                        contentType: "application/json",
                        dataType:"json",
                        success: function(dat){alert("Success : "+JSON.stringify(dat));},
                        failure: function(errMsg){alert("Error : "+errMsg);}
                    })
                 }
            }
            
            function deletePressed(){
                 var getid = document.getElementById("deleteid").value;
                 if(getid != "") {
                    $.ajax({
                        type: "DELETE",
                        url: "http://localhost:8080/StudentDB/webresources/entities.student/"+getid+"?",
                        contentType: "application/json",
                        dataType:"json",
                        success: function(dat){alert("Successfully deleted student ");},
                        failure: function(errMsg){alert("Error occurred while deleting student");}
                    })
                 } else {
                    alert("Enter Id to be deleted from database");
                 }
            }
        </script>        
    </head>
    <body>
        <table style="border: 1px solid black;padding: 15px;">
            <tr style="border: 1px solid black;padding: 15px;">
                <td style="border: 1px solid black;padding: 15px;">
                    Get Id : &nbsp;&nbsp;
                    <input type="text" id="getid" name="getid" >&nbsp;&nbsp;
                </td>
                <td style="border: 1px solid black;padding: 15px;">
                    <button id="getonebutton" onclick="getPressed()">HTTP GET</button>            
                </td>
                <td style="border: 1px solid black;padding: 15px;">
                    Delete Id : &nbsp;&nbsp;
                    <input type="text" id="deleteid" name="deleteid">&nbsp;&nbsp;
                </td>
                <td style="border: 1px solid black;padding: 15px;">
                    <button id="deletebutton" onclick="deletePressed()">DELETE</button><br><br>
                </td>
            </tr>
            <tr style="border: 1px solid black;padding: 15px;">
                <form onsubmit="postPressed()">
                    <td style="border: 1px solid black;padding: 15px;">
                        Name :&nbsp;&nbsp;
                        <input type="text" id="name" name="name">
                        <br><br>
                        Birth Date:&nbsp;&nbsp;
                        <input type="text" id="bdate" name="bdate">
                        <br><br>
                        Email:&nbsp;&nbsp;
                        <input type="text" id="email" name="email">
                        <br><br>
                        Contact:&nbsp;&nbsp;
                        <input type="text" id="contact" name="contact">
                        <br><br>
                        Twitter:&nbsp;&nbsp;
                        <input type="text" id="tw" name="tw">
                        <br><br>
                    </td>
                    <td style="border: 1px solid black;padding: 15px;">
                        <button type="submit" id="postbutton">HTTP POST</button>
                    </td>
                </form>
            
                <form onsubmit="putPressed()">
                    <td style="border: 1px solid black;padding: 15px;">
                        Put Id :&nbsp;&nbsp;
                        <input type="text" id="pid" name="pid">
                        <br><br>
                        Name :&nbsp;&nbsp;
                        <input type="text" id="pname" name="pname">
                        <br><br>
                        Birth Date:&nbsp;&nbsp;
                        <input type="text" id="pbdate" name="pbdate">
                        <br><br>
                        Email:&nbsp;&nbsp;
                        <input type="text" id="pemail" name="pemail">
                        <br><br>
                        Contact:&nbsp;&nbsp;
                        <input type="text" id="pcontact" name="pcontact">
                        <br><br>
                        Twitter:&nbsp;&nbsp;
                        <input type="text" id="ptw" name="ptw">
                        <br><br>
                    </td>
                    <td style="border: 1px solid black;padding: 15px;">
                        <button type="putPressed()" id="putbutton" onclick="putPressed()">HTTP PUT</button>
                    </td>
                </form>
            </tr>
    </table>
    </body>
</html>
