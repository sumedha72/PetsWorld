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
                <td>
                    <asp:RequiredFieldValidator ID="rvCategory" runat="server" ErrorMessage="Category cannot be empty" ControlToValidate="ddlCategory"></asp:RequiredFieldValidator>
                </td>
            </tr>

             <tr>
                <td>
                    <label>Enter animal name</label>
                </td>
                <td>
                    <asp:TextBox ID="txtAnimalName" runat="server" placeholder="Animal Name"></asp:TextBox>
                </td>
                <td>
             <asp:RequiredFieldValidator ID="rvAnimalName" runat="server" ErrorMessage="Animal Name cannot be empty" ControlToValidate="txtAnimalName"></asp:RequiredFieldValidator>
                </td>
                <td>
                    <asp:RegularExpressionValidator ID="revAnimalName" runat="server" ErrorMessage="Enter valid name" ControlToValidate="txtAnimalName" ValidationExpression="^[a-zA-Z''-'\s]{1,80}$"></asp:RegularExpressionValidator>

                </td>
                
            </tr>

            <tr>
                <td>
                    <label>Color</label>
                </td>
                <td>
                    <asp:TextBox ID="txtColor" runat="server" placeholder="Color"></asp:TextBox>
                </td>
                <td>
         <asp:RequiredFieldValidator ID="rvColor" runat="server" ErrorMessage="Color cannot be empty" ControlToValidate="txtColor"></asp:RequiredFieldValidator>
                </td>
                <td>
                    <asp:RegularExpressionValidator ID="revColor" runat="server" ErrorMessage="Enter valid color " ControlToValidate="txtColor" ValidationExpression="^[a-zA-Z''-'\s]{1,20}$"></asp:RegularExpressionValidator>

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
                <td>
      <asp:RequiredFieldValidator ID="rvSex" runat="server" ErrorMessage="Sex cannot be empty" ControlToValidate="ddlSex"></asp:RequiredFieldValidator>
                </td>
                
            </tr>

            <tr>
                <td>
                    <label>Enter height of animal</label>
                </td>
                <td>
                    <asp:TextBox ID="txtHeight" runat="server" placeholder="Height of animal">

                    </asp:TextBox>
                </td>
                 <td>
                <asp:RequiredFieldValidator ID="rvHeight" runat="server" ErrorMessage="Height of animal cannot be empty" ControlToValidate="txtHeight"></asp:RequiredFieldValidator>
                </td>
              
            </tr>

                <tr>
                <td>
                    <label>Enter weight of animal</label>
                </td>
                <td>
                    <asp:TextBox ID="txtWeight" runat="server" placeholder="Weight of animal">

                    </asp:TextBox>
                </td>
                 <td>
                <asp:RequiredFieldValidator ID="rvWeight" runat="server" ErrorMessage="Weight of animal cannot be empty" ControlToValidate="txtWeight"></asp:RequiredFieldValidator>
                </td>
                    </tr>
               
            

            <tr>
                <td>
                    <label>Enter age in  months</label>
                </td>
                <td>
                    <asp:TextBox ID="txtAge" runat="server" placeholder="Age in months"></asp:TextBox>
                </td>
                <td>
                <asp:RequiredFieldValidator ID="rvAge" runat="server" ErrorMessage="Age cannot be empty" ControlToValidate="txtAge"></asp:RequiredFieldValidator>
                </td>
                <td>
                <asp:RegularExpressionValidator ID="revAge" runat="server" ErrorMessage="Enter valid age" ControlToValidate="txtAge" ValidationExpression="^\d+$"></asp:RegularExpressionValidator>

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
                 <td>
                <asp:RequiredFieldValidator ID="rvQuantity" runat="server" ErrorMessage="Number of animals cannot be empty" ControlToValidate="txtQuantity"></asp:RequiredFieldValidator>
                </td>
                <td>
                <asp:RegularExpressionValidator ID="revQuantity" runat="server" ErrorMessage="Enter valid quantity" ControlToValidate="txtQuantity" ValidationExpression="^\d+$"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                 <td>
                    <label>Enter price of animals</label>
                </td>
                <td>
                    <asp:TextBox ID="txtPrice" runat="server" placeholder="Price of animals in Rupees">

                    </asp:TextBox>
                </td>
                 <td>
                <asp:RequiredFieldValidator ID="rvPrice" runat="server" ErrorMessage="Price of animals cannot be empty" ControlToValidate="txtPrice"></asp:RequiredFieldValidator>
                </td>
                <td>
                <asp:RegularExpressionValidator ID="revPrice" runat="server" ErrorMessage="Enter valid price" ControlToValidate="txtQuantity" ValidationExpression="^[1-9]$"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <label>Upload photo of animal</label>
                </td>
                <td>
                    <asp:FileUpload ID="imgPicture" runat="server" />
                </td>
                  <td>
                <asp:RequiredFieldValidator ID="rvimgPicture" runat="server" ErrorMessage="Please upload image" ControlToValidate="imgPicture"></asp:RequiredFieldValidator>
                </td>
            </tr>

            <tr>
                <td>
                    <label>Enter your name</label>
                </td>

                <td>
                    <asp:TextBox ID="txtSellerName" runat="server" placeholder="Your name"></asp:TextBox>
                </td>
                  <td>
                <asp:RequiredFieldValidator ID="rvSellerName" runat="server" ErrorMessage="Seller name cannot be empty" ControlToValidate="txtSellerName"></asp:RequiredFieldValidator>
                </td>
                <td>
              <asp:RegularExpressionValidator ID="revSellerName" runat="server" ErrorMessage="Enter valid name " ControlToValidate="txtSellerName" ValidationExpression="^[a-zA-Z''-'\s]{1,50}$"></asp:RegularExpressionValidator>

                </td>
            </tr>

            <tr>
                <td>
                    <label>Enter your address</label>
                </td>

                <td>
                    <asp:TextBox ID="txtSellerAddress" runat="server" placeholder="Your address"></asp:TextBox>
                </td>
                  <td>
                <asp:RequiredFieldValidator ID="rvSellerAddress" runat="server" ErrorMessage="Seller address cannot be empty" ControlToValidate="txtSellerAddress"></asp:RequiredFieldValidator>
                </td>
               
            </tr>

            <tr>
                <td>
                    <label>Enter your phone number</label>
                </td>

                <td>
                    <asp:TextBox ID="txtSellerPhone" runat="server" placeholder="Enter 10 digit mobile number"></asp:TextBox>
                </td>
                  <td>
                <asp:RequiredFieldValidator ID="rvSellerPhone" runat="server" ErrorMessage="Seller contact number cannot be empty" ControlToValidate="txtSellerPhone"></asp:RequiredFieldValidator>
                </td>
                <td>
                    <asp:RegularExpressionValidator ControlToValidate="txtSellerPhone" ID="revSellerPhone" runat="server" ErrorMessage="Enter valid contact number" ValidationExpression="^[0-9]{10}$"></asp:RegularExpressionValidator>
                </td>
            </tr>

            <tr>
                <td>
                    <label>Enter your Email Id</label>
                </td>

                <td>
                    <asp:TextBox ID="txtEmailId" runat="server" placeholder="Your Email ID"></asp:TextBox>
                </td>
                 <td>
                   <asp:RequiredFieldValidator ID="rvEmailId" runat="server" ErrorMessage="Email ID cannot be empty" ControlToValidate="txtEmailId"></asp:RequiredFieldValidator>
                </td>
                <td>
                <asp:RegularExpressionValidator ControlToValidate="txtEmailId" ID="revEmailId" runat="server" ErrorMessage="Invalid Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
               
            </tr>

            <tr>
                <td>
                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
                </td>

                  
            </tr>

            <tr>
                <td>
                    <asp:Label runat="server" ID="lblMessage"></asp:Label>
                </td>
            </tr>
          



        </table>
    </form>
</body>
</html>
