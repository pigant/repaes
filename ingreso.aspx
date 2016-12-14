<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ingreso.aspx.cs" Inherits="ingreso" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <br />
        <asp:TextBox ID="TextBox1" runat="server" Height="24px" Width="330px"></asp:TextBox>
        <br />
        <br />
        <asp:TextBox ID="TextBox2" runat="server" Height="27px" Width="328px"></asp:TextBox>
        <br />
        <br />
        <asp:TextBox ID="TextBox3" runat="server" Height="24px" Width="328px"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Height="34px" OnClick="Button1_Click" Text="Ingresar" Width="231px" />
&nbsp;<asp:Button ID="Button2" runat="server" Height="34px" OnClick="Button2_Click" style="margin-top: 0px" Text="Volver" Width="226px" />
        <br />
        <br />        
</asp:Content>

