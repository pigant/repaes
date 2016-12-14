<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="salidas.aspx.cs" Inherits="salidas" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <br />
        <asp:GridView ID="GridView1" runat="server" Width="589px">
        </asp:GridView>
        <br />
        <asp:Button ID="Button1" runat="server" Text="Button" Width="191px" />
&nbsp;<asp:Button ID="Button2" runat="server" Text="Button" Width="209px" />
        <br />
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server"></asp:ObjectDataSource>
        <br />
        <br />
</asp:Content>

