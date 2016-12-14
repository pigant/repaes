<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="menu.aspx.cs" Inherits="menu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="menu-botones">
        <asp:Button 
            ID="Button1" 
            runat="server" 
            Height="45px" 
            Text="Ingreso de vehículo" 
            Width="345px" 
        />
        <asp:Button 
            ID="Button2" 
            runat="server" 
            Height="45px" 
            Text="Salida de vehículo" 
            Width="345px" 
        />
        <asp:Button 
            ID="Button3" 
            runat="server" 
            Height="45px" 
            Text="Ver registros por fecha" 
            Width="345px" 
        />
        <asp:Button 
            ID="Button4" 
            runat="server" 
            Height="45px" 
            Text="Salir" 
            Width="345px" 
        />
    </div>

</asp:Content>

