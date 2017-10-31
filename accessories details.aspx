<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="accessories details.aspx.cs" Inherits="petsworld.accessories_details" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
         <asp:DataList ID="dlacc" runat="server" OnItemCommand="dlacc_ItemCommand" >
            <ItemTemplate>
                &nbsp;<asp:Image ID="AccessoriesImage" runat="server" Width="120px" Height="40px" ImageUrl='<%#"~/AccessoriesImageHandler.ashx?iAcc_Id="+Eval("iAcc_Id")%>' />
                <br />
                <asp:Label Text="ID" runat="server" />
                <asp:Label Text='<%#Eval("iAcc_Id") %>' ID="lblAccId" runat="server" /><br />
                <asp:Label Text="Name" runat="server" />
                <asp:Label Text='<%#Eval("vAcc_Name") %>' ID="lblAccName" runat="server" /><br />
                <asp:Label Text="Price" runat="server" />
                <asp:Label Text='<%#Eval("mAcc_Price") %>' ID="lblAccPrice" runat="server" /><br />
                <asp:Label Text="Quantity" runat="server" />
               <asp:DropDownList ID="ddlquantity" runat="server">
                   <asp:ListItem Value="0" Text="--select--"></asp:ListItem>
                   <asp:ListItem Value="1" Text="1"></asp:ListItem>
                   <asp:ListItem Value="2" Text="2"></asp:ListItem>
                   <asp:ListItem Value="3" Text="3"></asp:ListItem>
                   <asp:ListItem Value="4" Text="4"></asp:ListItem>
                   <asp:ListItem Value="5" Text="5"></asp:ListItem>
               </asp:DropDownList>
                <asp:Label Text="stock" runat="server" />
                 <asp:Label Text='<%#Eval("iAcc_Stock") %>' ID="lblAccStock" runat="server" /><br />
                <asp:Button CommandName="BuyAccessory" ID="Buy" CommandArgument='<%#Eval("iAcc_Id")%>' Text="Buy" runat="server" />
                <asp:Label id="lblpricetotal" runat="server" />
            </ItemTemplate>
            
        </asp:DataList>
        <asp:Label id="cartid" runat="server" />
    </div>
    </form>
</body>
</html>
