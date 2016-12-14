<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="salidas.aspx.cs" Inherits="salidas" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <br />
        <asp:TextBox ID="TextBox1" runat="server" Height="28px" Width="394px"></asp:TextBox>
        <br />
        <br />
        <asp:ListBox ID="ListBox1" runat="server" DataSourceID="ObjectDataSource1" Height="122px" Width="402px"></asp:ListBox>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Registrar salida" Width="191px" />
&nbsp;<asp:Button ID="Button2" runat="server" Text="Volver" Width="205px" />
        <br />
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server"></asp:ObjectDataSource>
        <br />
        <br />
</asp:Content>

