<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="WebApplication1.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="Scripts/jquery-3.2.1.js"></script>
    <a href="Scripts/jquery-3.2.1.min.map"></a>
    <script src="Scripts/jquery-3.2.1.min.js"></script>
    <script src="Scripts/jquery-ui-1.12.1.js"></script>
    <script src="Scripts/jquery.validate.js"></script>
    <link href="Content/themes/base/all.css" rel="stylesheet" />

    <script>
        $(document).ready(function () {
            $("#txtdob").datepicker({
                dateformat: "dd-mm-yyyy", maxDate: "-10Y", changeMonth: true, changeYear: true
            });
        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <h2>Customer Registration</h2>
        <table>
            <tr>
                <td>
                    <label>
                        Enter your name
                    </label>
                </td>
                <td>
                    <asp:TextBox runat="server" ID="txtCustName" placeholder="Your name" />
                    <asp:RequiredFieldValidator ID="rvCustName" ControlToValidate="txtCustName" runat="server" ErrorMessage="Full Name Required"></asp:RequiredFieldValidator>
                    <br />
                    <br />
                </td>
            </tr>


            <tr>
                <td>
                    <label>
                        Enter your address
                    </label>
                </td>
                <td>
                    <asp:TextBox runat="server" ID="txtAddress" placeholder="Your address" />
                    <asp:RequiredFieldValidator ID="rvAddress" ControlToValidate="txtAddress" runat="server" ErrorMessage="Address Required"></asp:RequiredFieldValidator>
                    <br />
                    <br />
                </td>
            </tr>


            <tr>
                <td>
                    <label>
                        Select your gender
                    </label>
                </td>
                <td>
                    <asp:DropDownList ID="ddlGender" runat="server">
                        <asp:ListItem Value="0" Text="--Select--" />
                        <asp:ListItem Value="1" Text="Male" />
                        <asp:ListItem Value="2" Text="Female" />
                        <asp:ListItem Value="3" Text="Others" />
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="rvGender" ControlToValidate="ddlGender" intialvalue="0" runat="server" ErrorMessage="Gender required"></asp:RequiredFieldValidator>
                    <br />
                    <br />
                </td>
            </tr>

            <tr>
                <td>
                    <label>
                        Choose your password
                    </label>
                </td>
                <td>
                    <asp:TextBox runat="server" ID="txtPassword" TextMode="Password" placeholder="Password" />
                    <asp:RequiredFieldValidator ID="rvPassword" ControlToValidate="txtPassword" runat="server" ErrorMessage="Password required"></asp:RequiredFieldValidator>
                    <br />
                    <br />
                </td>
            </tr>

            <tr>
                <td>
                    <label>
                        Confirm your password
                    </label>
                </td>
                <td>
                    <asp:TextBox runat="server" ID="txtConfirmPassword" TextMode="Password" placeholder="Password" />
                    <asp:RequiredFieldValidator ID="rvConfirmPassword" ControlToValidate="txtConfirmPassword" runat="server" ErrorMessage="Confirm password"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="cmConfirmPassword" ControlToCompare="txtPassword" ControlToValidate="txtConfirmPassword" runat="server" ErrorMessage="Password not matching"></asp:CompareValidator>
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td>

                    <label>
                        Enter your Phone Number
                    </label>
                </td>
                <td>
                    <asp:TextBox runat="server" ID="txtPhone" placeholder="Enter 10 digit Phone Number" />
                    <asp:RequiredFieldValidator ID="rvPhone" ControlToValidate="txtPhone" runat="server" ErrorMessage="Phone number cannot be empty"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ControlToValidate="txtPhone" ID="revPhoneNumber" runat="server" ErrorMessage="Enter valid mobile number" ValidationExpression="^[0-9]{10}$"></asp:RegularExpressionValidator>
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td>
                    <label>Enter E-mail ID</label>
                </td>
                <td>
                    <asp:TextBox runat="server" ID="txtEmail" placeholder="Email ID" />
                </td>

                <td>
                    <asp:RequiredFieldValidator ID="rvEmail" runat="server" ErrorMessage="Email ID cannot be empty" ControlToValidate="txtEmail"></asp:RequiredFieldValidator>
                </td>
                <td>
                    <asp:RegularExpressionValidator ControlToValidate="txtEmail" ID="revEmail" runat="server" ErrorMessage="Invalid Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    <br />
                    <br />
                </td>

            </tr>

            <tr>
                <td>
                    <label>
                        Enter date of birth
                    </label>
                </td>
                <td>
                    <asp:TextBox runat="server" ID="txtdob" placeholder="Date of Birth" />
                    <asp:RequiredFieldValidator ID="txtDateOfBirth" ControlToValidate="txtdob" ForeColor="Red" runat="server" ErrorMessage="Date Of Birth required"></asp:RequiredFieldValidator>
                    <br />
                    <br />
                </td>




            </tr>
            <tr>
                <td>
                    <asp:Button ID="btnRegister" runat="server" Text="Register" OnClick="btnRegister_Click" />
                </td>
            </tr>
            <tr>
            <asp:Label ID="lblMessage" runat="server"></asp:Label>
                </tr>
        </table>
    </form>
</body>
</html>
