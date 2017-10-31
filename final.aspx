<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="final.aspx.cs" Inherits="WebApplication6.final" %>

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
    <form id="form1" runat="server">
        <label>Thank You For Shopping With Us! The seller details have been mailed to Your Registered Email ID.</label>
        <asp:DataList ID="dlanimals" runat="server" RepeatDirection="Horizontal" GridLines="Both" RepeatColumns="3">
            <ItemTemplate>
                <table>
                    <tr>
                        <td>
                            <asp:Image Width="280" Height="200" ImageUrl='<%#"~/Handler1.ashx?iOrder_id="+Eval("iOrder_id") %>' ID="imgThumbnail" runat="server"  />
                            <br />
                              <asp:Label Text='<%#"Your Order ID:"+Eval("iOrder_id") %>' ID="lblOrderID" runat="server" ></asp:Label>
                            <br />
                            <asp:Label Text='<%#"Pet Name:"+Eval("vOrderName") %>' ID="lblOrderName" runat="server" ></asp:Label>
                            <br />

                             <asp:Label Text='<%#"Quantity:"+Eval("iOrderQuantity") %>' ID="lblQuantity" runat="server" ></asp:Label>
                            <br />
                          
                               <asp:Label Text='<%#"Total Price: "+Eval("iOrderTotal") %>' ID="lblAnimalPrice" runat="server" ></asp:Label>
                            <br />

                          </table>
        </ItemTemplate>
            </asp:DataList>
    <div>
    
    </div>
    </form>
</body>
</html>
