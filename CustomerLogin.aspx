<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CustomerLogin.aspx.cs" Inherits="WebApplication6.CustomerLogin" %>

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
         function Validate() {
             var uname = document.getElementById('txtuname');
             var Password = document.getElementById('txtpswd');
             if ((uname.value == '') || (Password.value == '')) {
                 alert('UserName or Password should not be blank');
                 return false;
             }
             else {
                 return true;
             }
         }
    </script>
    </head>
   <h1>CUSTOMER LOGIN</h1>
    <label> Sign in to continue  </label>
       
<form id="form1" runat="server">
        <table>
            <tr>
                <td>
          <label>
            USERNAME:
        </label>
         <asp:TextBox runat="server" ID="txtuname" placeholder="username" /><asp:RequiredFieldValidator ID="txtuanme" ForeColor="Red"  ControlToValidate="txtuname" runat="server" ErrorMessage="Username required"></asp:RequiredFieldValidator>  <br /><br />
                </td>
            </tr>

            <tr>
                <td>
         <label>
            PASSWORD:
        </label> 
         <asp:TextBox runat="server" ID="txtpswd" TextMode="Password" placeholder="password"></asp:TextBox>
        <%--<asp:RequiredFieldValidator ID="txtpswrd" ControlToValidate="txtpswd" ForeColor="Red" runat="server" ErrorMessage="Password required"></asp:RequiredFieldValidator>--%>
          <br /><br /> 
                    </td>
        </tr>
            <tr>
                <td>
                   
                    <asp:CheckBox runat="server" ID="chkremember" />
                     <label>
                        Remember me
                    </label>
                </td>
            </tr>
            <tr>
                <td>
                   <asp:Button ID="btn_login" runat="server" Text="Login" Font-Bold="True"
            BackColor="#CCFF99"   OnClientClick="Validate()"/><br />
                </td>
            </tr>

        </table>
     
      

    <div>
    
    </div>
                  
          
    </form>
</body>