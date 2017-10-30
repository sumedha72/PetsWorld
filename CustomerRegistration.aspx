<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CustomerRegistration.aspx.cs" Inherits="WebApplication6.CustomerRegistration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <script src="Scripts/jquery-3.2.1.js"></script>
    <a href="Scripts/jquery-3.2.1.min.map"></a>
    <script src="Scripts/jquery-3.2.1.min.js"></script>
    <script src="Scripts/jquery-ui-1.12.1.js"></script>
    <script src="Scripts/jquery.validate.js"></script>
    <link href="Content/themes/base/all.css" rel="stylesheet" />
   
      <script>
          $(document).ready(function () {
              $("#txtdob").datepicker({
                  dateformat: "dd-mm-yyyy", maxDate: "-10Y", changeMonth: true, changeYear: true
              });
          });
    </script>
      <h1>NEW MEMBER REGISTRATION</h1>
   
    <form id="form1" runat="server">
        <table id="tbl">
            <tr>
                <td class="auto-style1">
                    <label>
                        CUSTOMER NAME:
                    </label>
                    <asp:TextBox runat="server" ID="txtcname" placeholder="first name" Width="148px" />
                    <asp:RequiredFieldValidator ID="txtcnme" ForeColor="Red" Text="*" ControlToValidate="txtcname" runat="server" ErrorMessage="firstname required"></asp:RequiredFieldValidator>
                    <br />
                    <br />
                </td>
            </tr>
            

            <tr>
                <td class="auto-style1">
                    <label>
                        USER NAME:
                    </label>
                    <asp:TextBox runat="server" ID="Textuname" placeholder="user name" Width="188px" /><asp:RequiredFieldValidator ID="RequiredFieldValidator1" ForeColor="Red" Text="*" ControlToValidate="textuname" runat="server" ErrorMessage="username required"></asp:RequiredFieldValidator>
                    <br />
                    <br />
                </td>
            </tr>

            <tr>
                <td class="auto-style1">
                    <label>
                        GENDER:
                    </label>
                    <asp:DropDownList ID="ddlgender" runat="server" Height="25px" Width="218px">
                        <asp:ListItem Value="0" Text="--Select--" />
                        <asp:ListItem Value="1" Text="Male" />
                        <asp:ListItem Value="2" Text="Female" />
                        <asp:ListItem Value="3" Text="Others" />
                    </asp:DropDownList>
                <asp:RequiredFieldValidator ID="ddlgnder" ControlToValidate="ddlgender" intialvalue="0" runat="server" ForeColor="Red" Text="*" ErrorMessage="Gender required"></asp:RequiredFieldValidator>
                    <br />
                    <br />
                </td>
            </tr>

            <tr>
                <td class="auto-style1">
                    <label>
                        PASSWORD:
                    </label>
                    <asp:TextBox runat="server" ID="txtpswd" TextMode="Password" placeholder="password" Width="231px" />
                    <asp:RequiredFieldValidator ID="txtpswrd" ControlToValidate="txtpswd" ForeColor="Red" Text="*" runat="server" ErrorMessage="Password required"></asp:RequiredFieldValidator>
                    <br />
                    <br />
                </td>
            </tr>

            <tr>
                <td class="auto-style1">
                    <label>CONFIRM PASSWORD: <asp:TextBox runat="server" ID="txtcnfrmpswd" TextMode="Password" placeholder="password" Height="16px" Width="157px" />
                    <asp:CompareValidator ID="txtcnfrmpswrd" ControlToCompare="txtpswd" ControlToValidate="txtcnfrmpswd" runat="server" ForeColor="Red" ErrorMessage="Password not matching"></asp:CompareValidator>
                    </label>
                    <br />
                    <br />
                </td>
            </tr>

            <tr>
                <td class="auto-style1">

                    <label>
                        PHONE NUMBER:
                    </label>
                    <asp:TextBox runat="server" ID="txtphn" placeholder="phone number" TextMode="Phone" Width="194px" /><br />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <label>
                        EMAIL ID:
                    </label>
                    <asp:TextBox runat="server" ID="txtemail" placeholder="email" Height="16px" Width="248px" />
                    <br />
                    <br />
                    <asp:RegularExpressionValidator ID="txtmail" ControlToValidate="txtemail" runat="server" ErrorMessage="Please provide correct email ID" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>

            <tr>
                <td class="auto-style1" >
                    <label>
                        DATE OF BIRTH
                    </label> <asp:TextBox runat="server" ID="txtdob" placeholder="Date of Birth" Width="214px"/>
                       <asp:RequiredFieldValidator ID="txtDateOfBirth" ControlToValidate="txtdob" ForeColor="Red" Text="*" runat="server" ErrorMessage="Date Of Birth required"></asp:RequiredFieldValidator>  </td>
                 
                
                   <td> </td>
                 <td>   <br /><br />
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                 <asp:Button ID="btnRegister" runat="server" Text="REGISTER" />
                </td>
            </tr>
        </table>
    <div>
    
    </div>
</head>