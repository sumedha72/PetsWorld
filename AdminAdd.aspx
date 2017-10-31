<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminAdd.aspx.cs" Inherits="WebApplication1.AdminAdd" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <label>Add Accessories</label>
    <div>
    
    </div>
        <asp:TextBox ID="txtAcc_Name" placeholder="Name of Accessory" runat="server" />
        <asp:RequiredFieldValidator ID="rvName" runat="server" ErrorMessage="Field cannot be empty" ControlToValidate="txtAcc_Name"></asp:RequiredFieldValidator>
        <br />
        <asp:TextBox ID="txtAcc_Price" placeholder="Price of Accessory in Rupees" runat="server" />
        <asp:RequiredFieldValidator ID="rvPrice" runat="server" ErrorMessage="Field cannot be empty" ControlToValidate="txtAcc_Price"></asp:RequiredFieldValidator>
        <br />
        <asp:TextBox ID="txtAcc_Stock" placeholder="Stock Value" runat="server" />
        <asp:RequiredFieldValidator ID="rvStock" runat="server" ErrorMessage="Field cannot be empty" ControlToValidate="txtAcc_Stock"></asp:RequiredFieldValidator>
        <br />
        <asp:FileUpload ID="txtAcc_Img" placeholder="Image" runat="server" />
        <asp:RequiredFieldValidator ID="rvImage" runat="server" ErrorMessage="Field cannot be empty" ControlToValidate="txtAcc_Img"></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Button Text="Add" runat="server" ID="btnadd" OnClick="btnadd_Click" />
       
        <asp:Label ID="lblmessage" runat="server" />
    </form>
</body>
</html>
