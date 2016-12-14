<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ingreso.aspx.cs" Inherits="ingreso" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="form-ingreso">
        <asp:TextBox ID="TextBox1" runat="server" Height="25px" Width="330px"></asp:TextBox>
        <asp:TextBox ID="TextBox2" runat="server" Height="25px" Width="330px"></asp:TextBox>
        <asp:TextBox ID="TextBox3" runat="server" Height="25px" Width="330px"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Height="25px" OnClick="Button1_Click" Text="Ingresar" Width="330px" />
        <asp:Button ID="Button2" runat="server" Height="25px" OnClick="Button2_Click" style="margin-top: 0px" Text="Volver" Width="330px" />
    </div>
</asp:Content>

