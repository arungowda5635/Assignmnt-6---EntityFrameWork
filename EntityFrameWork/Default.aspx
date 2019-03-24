<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="EntityFrameWork.Default" %>

<!DOCTYPE html>

<html xmlns="#">
<head runat="server">
    <title>Student Admision</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

    
    <style>
        table,td {
            border:5px ridge white;
            height:auto;
            width:auto;
            margin:10px;
            padding:20px;
            font-weight:100;
            font-size:larger;
        }
        .btn {
            border:5px ridge yellow;
            height:80px;
            width:500px;
            text-align:center;
            font-size:larger;
        }
        body {
            background-color:black;
            color:white;
            opacity:0.5;
        }
    </style>
</head>
    
<body>
    
    <form id="form1" runat="server">
        <center>
            <div class="form-group">
            <h1>Wel Come to Admin Login Page</h1>
            <table>
                <tr>
                    <td colspan="2"> <img src="images/logo.png" height="100px" width="400px"></img></td>
                </tr>

                <tr>
                    <td colspan="2">Enter User Name <br />
                    <asp:TextBox ID="TxtName" class="form-control" runat="server"></asp:TextBox></td>
                    
                </tr>
                <tr>
                    <td colspan="2">Enter Password<br />
                    <asp:TextBox ID="TxtPassword" class="form-control" runat="server" textMode="Password"></asp:TextBox></td>
                    
                </tr>
            <tr>
                <td colspan="2"><asp:Button ID="btnLogin" class="btn btn-primary"  runat="server" Text="Login" OnClick="btnLogin_Click" /></td>
              
            </tr>
            
                </table>
            <h1 id="rslt" runat="server"> </h1>
        </div>
            </center>
    </form>
</body>
</html>
