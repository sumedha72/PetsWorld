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
                            <asp:Image Width="280" Height="200" ImageUrl='<%#"~/Handler1.ashx?AnimalID="+Eval("iAnimal_Id") %>' ID="imgThumbnail" runat="server"  />
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

                               <asp:Label Text='<%#"In Stock: "+Eval("iAnimalStock") %>' ID="lblAnimalStock" runat="server" ></asp:Label>
                            <br />
                            
                             <asp:Label Text='<%#"Age: "+Eval("iAnimalAge") %>' ID="lblAnimalAge" runat="server" ></asp:Label>
                            <br />
                             
                            <asp:Button CommandName="Purchase" CommandArgument='<%#Eval("iAnimal_Id") %>' CssClass="btn" Text="Purchase" ID="cmdPurchase" runat="server" />
                            

                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>

        

    </form>
  
</body>
</html>
