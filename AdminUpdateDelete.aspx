<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminUpdateDelete.aspx.cs" Inherits="WebApplication1.Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
           
           <label>Update and Delete Accessories</label>

            <%--<asp:TextBox ID="txtAcc_Name" placeholder="Name of Accessory" runat="server" />
        <asp:RequiredFieldValidator ID="rvName" runat="server" ErrorMessage="Field cannot be empty" ControlToValidate="txtAcc_Name"></asp:RequiredFieldValidator>
        <br />
        <asp:TextBox ID="txtAcc_Price" placeholder="Price of Accessory in Rupees" runat="server" />
        <asp:RequiredFieldValidator ID="rvPrice" runat="server" ErrorMessage="Field cannot be empty" ControlToValidate="txtAcc_Price"></asp:RequiredFieldValidator>
        <br />
        <asp:TextBox ID="txtAcc_Stock" placeholder="Stock Value" runat="server" />
        <asp:RequiredFieldValidator ID="rvStock" runat="server" ErrorMessage="Field cannot be empty" ControlToValidate="txtAcc_Stock"></asp:RequiredFieldValidator>
        <br />
        <asp:FileUpload ID="txtAcc_Img" placeholder="Image" runat="server" />
        <asp:RequiredFieldValidator ID="rvImage" runat="server" ErrorMessage="Field cannot be empty" ControlToValidate="txtAcc_Img"></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Button Text="Add" runat="server" ID="btnadd" OnClick="btnadd_Click" />
        <asp:Button Text="Update" ID="btnupdate" runat="server" OnClick="btnupdate_Click" />
        <asp:Button Text="Delete" runat="server" ID="btndelete" OnClick="btndelete_Click" /><br /><br />
        <asp:Label ID="lblmessage" runat="server" />--%>

            <asp:TextBox ID="txtSearch" runat="server" placeholder="Enter Accessory name" />
            <asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click" />

            <asp:GridView AutoGenerateColumns="false" runat="server" ID="gvVideo" OnRowDeleting="gvVideo_RowDeleting" OnRowUpdating="gvVideo_RowUpdating" OnRowEditing="gvVideo_RowEditing" OnRowCancelingEdit="gvVideo_RowCancelingEdit">
                <Columns>
     
                     <asp:TemplateField HeaderText="Accessory ID">
                        <ItemTemplate>
                            <asp:Label ID="lblAccID" runat="server" Text='<%#Eval("iAcc_ID") %>' />
                        </ItemTemplate>
                        
                    </asp:TemplateField>


                    <asp:TemplateField HeaderText="Accessory Name">
                        <ItemTemplate>
                            <asp:Label ID="lblAccName" runat="server" Text='<%#Eval("vAcc_Name") %>' />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtAccName" runat="server" Text='<%#Eval("vAcc_Name") %>' />
                        </EditItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="In Stock">
                        <ItemTemplate>
                            <asp:Label ID="lblInStock" runat="server" Text='<%#Eval("iAcc_Stock") %>' />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtInStock" runat="server" Text='<%#Eval("iAcc_Stock") %>' />
                        </EditItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Accessory Price">
                        <ItemTemplate>
                            <asp:Label ID="lblAccPrice" runat="server" Text='<%#Eval("mAcc_Price") %>' />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtAccPrice" runat="server" Text='<%#Eval("mAcc_Price") %>' />
                        </EditItemTemplate>
                    </asp:TemplateField>







                    <asp:TemplateField HeaderText="Action">
                        <ItemTemplate>
                            <asp:Button CommandName="Edit" CausesValidation="false" Text="Edit" runat="server" />
                            <asp:Button CommandName="Delete" CausesValidation="false" Text="Delete" runat="server" />
                        </ItemTemplate>
                    
                        <EditItemTemplate>
                            <asp:Button CommandName="Update" CausesValidation="false" Text="Update" runat="server" />

                            <asp:Button CommandName="Cancel" CausesValidation="false" Text="Cancel" runat="server" />

                        </EditItemTemplate>




                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>
