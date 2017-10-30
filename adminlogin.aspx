<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminlogin.aspx.cs" Inherits="Book_Store.adminlogin" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="Scripts/jquery-3.2.1.js"></script>
    <a href="Scripts/jquery-3.2.1.min.map"></a>
    <script src="Scripts/jquery-3.2.1.min.js"></script>
    <script src="Scripts/jquery-ui-1.12.1.js"></script>
    <script src="Scripts/jquery.validate.js"></script>
   
</head>

<body>
     
      <h1>Welcome Admin</h1>
    <label> Log in to continue  </label>
       
  


    <form id="form1" runat="server">
        <table>
            <tr>
                <td>
          <label>
            USERNAME:
        </label>
         <asp:TextBox runat="server" ID="txtuname" placeholder="username" />
<asp:RequiredFieldValidator ID="txtuanme" ForeColor="Red"  ControlToValidate="txtuname" runat="server" ErrorMessage="Username required"></asp:RequiredFieldValidator>  <br /><br />
                </td>
            </tr>

            <tr>
                <td>
         <label>
            PASSWORD:
        </label> 
         <asp:TextBox runat="server" ID="txtpswd" TextMode="Password" placeholder="password"/>
        <asp:RequiredFieldValidator ID="txtpswrd" ControlToValidate="txtpswd" ForeColor="Red" runat="server" ErrorMessage="Password required"></asp:RequiredFieldValidator>
          <br /><br /> 
                    </td>
        </tr>

            <tr>
                <td>
                    <asp:Button runat="server" ID="cmdlogin" text="LOG IN" />
                </td>
            </tr>

        </table>
       
    
    </div>
                    <p>&copy; Onlinebookstore.com</p>
          
    </form>
</body>
</html>
