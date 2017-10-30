<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AnimalDisplay.aspx.cs" Inherits="WebApplication1.AnimalDisplay" %>

<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
   
</head>
<body>
   
   
    

    <form id="animaldetails" runat="server">
        <label>Adopt a pet here!</label>
       <asp:DataList ID="dlanimals" runat="server" RepeatDirection="Horizontal" GridLines="Both" RepeatColumns="4" OnItemCommand="dlanimals_ItemCommand">
            <ItemTemplate>
                <table>
                    <tr>
                        <td>
                            <asp:Image Width="280" Height="200" ImageUrl='<%#"~/Handler1.ashx?AnimalID="+Eval("iAn_Id") %>' ID="imgThumbnail" runat="server"  />
                            <br />
                            <asp:Label Text='<%#"Name:"+Eval("vAn_Name") %>' ID="lblAnimalName" runat="server" ></asp:Label>
                            <br />

                            <asp:Label Text='<%#"Height:"+Eval("vAn_Height") %>' ID="lblAnimalHeight" runat="server" ></asp:Label>

                            <br />
                            <asp:Label Text='<%#"Weight: "+Eval("vAn_Weight") %>' ID="lblAnimalWeight" runat="server" ></asp:Label>
                            <br />

                            <asp:Label Text='<%#"Color "+Eval("vAn_Color") %>' ID="lblAnimalColor" runat="server" ></asp:Label>
                            <br />

                            <asp:Label Text='<%#"Gender: "+Eval("vAn_Gender") %>' ID="lblAnimalGender" runat="server" ></asp:Label>
                            <br />

                               <asp:Label Text='<%#"Price: "+Eval("vAn_Price") %>' ID="lblAnimalPrice" runat="server" ></asp:Label>
                            <br />

                               <asp:Label Text='<%#"In Stock: "+Eval("vAn_Stock") %>' ID="lblAnimalStock" runat="server" ></asp:Label>
                            <br />
                             
                            <asp:Button CommandName="Purchase" CommandArgument='<%#Eval("iAn_Id") %>' CssClass="btn" Text="Purchase" ID="cmdPurchase" runat="server" />
                            

                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>

        

    </form>
  
</body>
</html>
