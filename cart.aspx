<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cart.aspx.cs" Inherits="petsworld.cart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
   <div id="UserCart">
        <h2>Your Cart</h2>
        <div id="CartDetails">
            <asp:DataList runat="server" ID="CustomerCart" RepeatDirection="Horizontal" RepeatColumns="1"  OnItemCommand="CustomerCart_ItemCommand">
                <ItemTemplate>
                    <asp:Label Text="" runat="server" /><asp:Label Text='<%#Eval("iCart_Id") %>' ID="lblcartid" runat="server" /><br />
                    <asp:Label Text="" runat="server" /><asp:Label Text='<%#Eval("vName") %>' ID="lblname" runat="server" /><br />
                     <asp:Label Text="" runat="server" /><asp:Label Text='<%#Eval("nQuantity") %>' ID="lblquantity" runat="server" /><br />
                     <asp:Label Text="" runat="server" /><asp:Label Text='<%#Eval("mPrice") %>' ID="lblprice" runat="server" />
                    <div style="float:right">
                        <asp:Button Text="Delete" runat="server" CommandName="Delete" CommandArgument='<%#Eval("iCart_Id")%>'/>
                        <asp:Button Text="Buy" runat="server" CommandName="Buy" CommandArgument='<%#Eval("iCart_Id") %>' />
                    </div>
                </ItemTemplate>
            </asp:DataList>
    </form>
</body>

</html>




