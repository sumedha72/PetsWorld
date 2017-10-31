<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication1.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <script src="Scripts/jquery-3.2.1.js"></script>
    <a href="Scripts/jquery-3.2.1.min.map"></a>
    <script src="Scripts/jquery-3.2.1.min.js"></script>
    <script src="Scripts/jquery-ui-1.12.1.js"></script>
    <script src="Scripts/jquery.validate.js"></script>
     <script type="text/javascript" language="javascript">
        
    </script>
</head>
   
<body>
    <h1>CUSTOMER LOGIN</h1>
    <label> Sign in to continue  </label>
    <form id="Login" runat="server">
    <div>
    
    </div>
         <table>
            <tr>
                <td>
          <label>
           Enter Email ID
        </label>
                    </td>
                <td>
         <asp:TextBox runat="server" ID="txtEmail" placeholder="Email ID" />
          <asp:RequiredFieldValidator ID="rvEmail"  ControlToValidate="txtEmail" runat="server" ErrorMessage="Email ID required"></asp:RequiredFieldValidator>  <br /><br />
                </td>
            </tr>

            <tr>
                <td>
         <label>
            Enter password
        </label> 
                    </td>
                <td>
         <asp:TextBox runat="server" ID="txtPassword" TextMode="Password" placeholder="Password"></asp:TextBox>
       
          <br /><br /> 
                    </td>
        </tr>
            <tr>
                <td>
                   
                    <asp:CheckBox runat="server" ID="chkRemember" />
                     <label>
                        Remember me
                    </label>
                </td>
            </tr>
            <tr>
                <td>
                   <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click"  />
                </td>
            </tr>
             <tr>
             <asp:Label ID="lblMessage" runat="server"></asp:Label>
                 </tr>
        </table>
     
      
    </form>
</body>
</html>
