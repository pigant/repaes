<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <br/>
        <asp:TextBox 
            ID="TextBox1" 
            runat="server" 
            Height="26px" 
            Width="333px"></asp:TextBox>
        <br />
        <br/>
        <asp:TextBox 
            ID="TextBox2" 
            runat="server" 
            Height="24px" 
            Width="335px"></asp:TextBox>
        <br />
        <br />
        <asp:Button 
            ID="Button1" 
            runat="server" 
            Text="Ingresar" 
            Width="345px" 
            Height="45px" 
        />
    <br/>
    <br/>
    </div>
    </form>
</body>
</html>
