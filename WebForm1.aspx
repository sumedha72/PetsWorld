<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication7.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ScriptManager ID="ScriptManager1" runat="server" AsyncPostBackTimeout="600">
        </asp:ScriptManager>
        <asp:Timer ID="Timer1" Interval="3000" OnTick="Timer1_Tick" Enabled="false" runat="server">
        </asp:Timer>
        <br />
        <asp:UpdatePanel ID="updPanel" runat="server" UpdateMode="Conditional">
            <ContentTemplate>
                     <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Auto Send Mail Test" />     
            </ContentTemplate>
            <Triggers>
                     <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick" />
            </Triggers>
        </asp:UpdatePanel>
        <br />
    </div>
    </form>
</body>
</html>
