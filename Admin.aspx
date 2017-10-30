<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="petsworld.Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:TextBox ID="txtAcc_Id"  runat="server" /><br />
        <asp:TextBox ID="txtAcc_Name" placeholder="Name" runat="server" /><br />
        <asp:TextBox ID="txtAcc_Price" placeholder="Price" runat="server" /><br />
        <asp:TextBox ID="txtAcc_Stock" placeholder="Stock" runat="server" /><br />
        <asp:FileUpload ID="txtAcc_Img" placeholder="Image" runat="server" /><br />
        <asp:Button Text="Add" runat="server" ID="btnadd" OnClick="btnadd_Click" />
        <asp:Button Text="update" ID="btnupdate" runat="server" OnClick="btnupdate_Click" />
        <asp:Button Text="Delete" runat="server" ID="btndelete" OnClick="btndelete_Click" /><br />
        <asp:Label ID="lblmessage" runat="server" />
    </div>
    </form>
</body>
</html>
