<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="accessories.aspx.cs" Inherits="petsworld.accessories" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">

        
        <asp:DataList ID="dlAccesories" runat="server" OnItemCommand="dlAccesories_ItemCommand" >
            <ItemTemplate>
                &nbsp;<asp:Image ID="AccessoriesImage" runat="server" Width="120px" Height="40px" ImageUrl='<%#"~/AccessoriesImageHandler.ashx?iAcc_Id="+Eval("iAcc_Id")%>' />
                <br />
                <asp:Label Text='<%#Eval("iAcc_Id") %>' ID="lblAccId" runat="server" /><br />
                <asp:Label Text='<%#Eval("vAcc_Name") %>' ID="lblAccName" runat="server" /><br />
                <asp:Label Text='<%#Eval("mAcc_Price") %>' ID="lblAccPrice" runat="server" /><br />
                <asp:Label Text='<%#Eval("iAcc_Stock") %>' ID="lblAccStock" runat="server" /><br />
                <asp:Button CommandName="BuyAccessory" ID="Buy" CommandArgument='<%#Eval("iAcc_Id")%>' Text="Buy" runat="server" />
                
            </ItemTemplate>
            
        </asp:DataList>
        </form>
</body>
</html>
