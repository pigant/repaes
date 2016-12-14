<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="salidas.aspx.cs" Inherits="salidas" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <br />
        <asp:TextBox ID="TxtBuscar" runat="server" Height="28px" Width="394px"></asp:TextBox>
        <br />
        <br />
        <asp:ListBox ID="ListPatentes" runat="server" DataSourceID="ObjectDataSource1" Height="122px" Width="402px"></asp:ListBox>
        <br />
        <br />
        <asp:Button ID="BtnRegistrar" runat="server" Height="34px" Text="Registrar salida" Width="191px" />
&nbsp;<asp:Button ID="BtnVolver" runat="server" Height="33px" Text="Volver" Width="205px" />
        <br />
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server"></asp:ObjectDataSource>
        <br />
        <br />
</asp:Content>

