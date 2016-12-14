<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="resumen.aspx.cs" Inherits="resumen" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <asp:Calendar ID="Calendar1" runat="server" Height="64px" Width="175px"></asp:Calendar>
        <asp:GridView ID="GridView1" runat="server" Width="691px">
        </asp:GridView>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Imprimir" Width="172px" />
&nbsp;<asp:Button ID="Button2" runat="server" Text="Volver" Width="169px" />
        <br />
        <br />
</asp:Content>

