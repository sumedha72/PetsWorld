<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Purchase.aspx.cs" Inherits="Home.DisplayFullDetail" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="DisplayFull" runat="server">
          <label>See Individual animal Data</label>
      
        <asp:DataList ID="purchaseAnimal" runat="server" RepeatDirection="Horizontal" GridLines="Both" RepeatColumns="1" OnItemCommand="purchaseAnimal_ItemCommand">
            <ItemTemplate>
                <table>
                    <tr>
                        <td>
                            <asp:Image Width="500" Height="500" ImageUrl='<%#"~/Handler1.ashx?AnimalID="+Eval("iAnimal_Id") %>' ID="imgThumbnail" runat="server"  />
                            <br />
                            <asp:Label Text='<%#"Name:"+Eval("vAnimalName") %>' ID="lblAnimalName" runat="server" ></asp:Label>
                            <br />

                            <asp:Label Text='<%#"Height:"+Eval("vAnimalHeight") %>' ID="lblAnimalHeight" runat="server" ></asp:Label>

                            <br />
                            <asp:Label Text='<%#"Weight: "+Eval("vAnimalWeight") %>' ID="lblAnimalWeight" runat="server" ></asp:Label>
                            <br />

                            <asp:Label Text='<%#"Color "+Eval("vAnimalColor") %>' ID="lblAnimalColor" runat="server" ></asp:Label>
                            <br />

                            <asp:Label Text='<%#"Gender: "+Eval("vAnimalSex") %>' ID="lblAnimalGender" runat="server" ></asp:Label>
                            <br />

                               <asp:Label Text='<%#"Price: "+Eval("vAnimalPrice") %>' ID="lblAnimalPrice" runat="server" ></asp:Label>
                            <br />

                            <asp:DropDownList runat="server" ID="ddlAnimalQuant">
                                <asp:ListItem Text="1" Value="1"/>
                                <asp:ListItem Text="2" Value="2"/>
                                <asp:ListItem Text="3" Value="3"/>
                                
                            </asp:DropDownList>

                         <asp:Button CommandName="Select" runat="server"  ID="Select" CommandArgument='<%#Eval("vAnimalPrice") %>' Text="Select" />

                           

                               <asp:Label Text='<%#"In Stock: "+Eval("iAnimalStock") %>' ID="lblAnimalStock" runat="server" ></asp:Label>
                            <br />
                            
                             <asp:Label Text='<%#"Age: "+Eval("iAnimalAge") %>' ID="lblAnimalAge" runat="server" ></asp:Label>
                            <br />
                             
                            <asp:Button CommandName="Next" CommandArgument='<%#Eval("iAnimalId") %>' CssClass="btn" Text="Purchase" ID="cmdPurchase" runat="server" />
                            

                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
          <asp:Label ID="lblmsg" runat="server" />
    </form>
</body>
</html>
