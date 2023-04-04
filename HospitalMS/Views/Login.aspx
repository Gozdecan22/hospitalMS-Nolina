<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="HospitalMS.Views.Login" EnableEventValidation="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Hospital Management System</title>
    <link rel="stylesheet" href="../Libs/Bootstrap/css/bootstrap.min.css"  />
        <link rel="stylesheet"  href="../CSS/Login.css" />

</head>
<body style="background-image:url(../Assets/Images/login.jpg);background-size:cover" >
     
    <div class="container-fluid" >
        <div class="row" style="height:120px" ></div>
        <div class="row">
            <div class="col-md-4"></div>
            <div class="col-md-5">
                <h1 class="text-primary">Nolina Hastanesi</h1>
                
    <form id="form1" runat="server">
  <div class="mb-3" color: ; bg-color: ;>
    <label for="EmailTb" class="form-label" >Email address</label>
    <input type="email" class="form-control" id="EmailTb" aria-describedby="emailHelp" placeholder="Enter email" runat="server" required="required"/>
  </div>
  <div class="mb-3">
    <label for="PasswordTb" class="form-label">Password</label>
    <input type="password" class="form-control" id="PasswordTb" placeholder="Password" runat="server" required="required"/>
  </div>
  <div class="mb-3 form-check" color: ;>
      <asp:DropDownList ID="RoleCb" runat="server"  class="form-control">
    <asp:ListItem>--Select Role--</asp:ListItem>
    <asp:ListItem>Admin</asp:ListItem>
    <asp:ListItem>Doctor</asp:ListItem>
    <asp:ListItem>Receptionist</asp:ListItem>
    <asp:ListItem>Laboratorian</asp:ListItem>
      
          </asp:DropDownList>
  </div>
        <div class="d-grid">
            
  <label runat="server" id="ErrMsg" class="text-danger"> </label> <br />
  <asp:Button ID="EditBtn" runat="server" Text="Login" class="btn btn-primary btn-block" OnClick="EditBtn_Click"  />
        </div>

</form>
            </div>
            <div class="col-md-3"></div>
        </div>

    </div>

</body>
</html>
