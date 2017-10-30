<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SellerPage.aspx.cs" Inherits="WebApplication1.SellerPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="Seller" runat="server">
        <label>Sell your pet</label>
        <div>
        </div>
        <table>
            <tr>
                <td>

                    <label>Select animal category</label>
                </td>
                <td>
                    <asp:DropDownList runat="server" ID="ddlCategory">
                        <asp:ListItem Value="0" Text="--Select--" />
                        <asp:ListItem Text="Dog" />
                        <asp:ListItem Text="Cat" />
                        <asp:ListItem Text="Bird" />
                        <asp:ListItem Text="Rabbit" />
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    <label>Color</label>
                </td>
                <td>
                    <asp:TextBox ID="txtColor" runat="server" placeholder="Color"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <label>Choose sex</label>
                </td>
                <td>
                    <asp:DropDownList runat="server" ID="ddlSex">
                        <asp:ListItem Value="0" Text="--Select--" />
                        <asp:ListItem Text="Male" />
                        <asp:ListItem Text="Female" />
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    <label>Enter age in  months</label>
                </td>
                <td>
                    <asp:TextBox ID="txtAge" runat="server" placeholder="Age in months"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <label>Enter number of animals</label>
                </td>
                <td>
                    <asp:TextBox ID="txtQuantity" runat="server" placeholder="Number of animals">

                    </asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <label>Upload photo of animal</label>
                </td>
                <td>
                    <asp:FileUpload ID="imgPicture" runat="server" />
                </td>
            </tr>

            <tr>
                <td>
                    <label>Enter your name</label>
                </td>

                <td>
                    <asp:TextBox ID="txtSellerName" runat="server" placeholder="Your name"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td>
                    <label>Enter your address</label>
                </td>

                <td>
                    <asp:TextBox ID="txtSellerAddress" runat="server" placeholder="Your address"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td>
                    <label>Enter your phone number</label>
                </td>

                <td>
                    <asp:TextBox ID="txtSellerPhone" runat="server" placeholder="Your phone number"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td>
                    <label>Enter your Email Id</label>
                </td>

                <td>
                    <asp:TextBox ID="TextBox3" runat="server" placeholder="Your name"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td>
                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
                </td>
            </tr>



        </table>
    </form>
</body>
</html>
