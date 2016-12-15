<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="menu.aspx.cs" Inherits="menu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="menu-botones">
        <asp:Button 
            ID="BtnIngreso" 
            runat="server" 
            Text="Ingreso de vehículo" 
            OnClick="BtnIngreso_Click" 
        />
        <asp:Button 
            ID="BtnSalida" 
            runat="server" 
            Text="Salida de vehículo" 
            OnClick="BtnSalida_Click" 
        />
        <asp:Button 
            ID="BtnResumen" 
            runat="server" 
            Text="Ver registros por fecha" 
            OnClick="BtnResumen_Click" 
        />
        <asp:Button 
            ID="BtnSalir" 
            runat="server" 
            Text="Salir" 
            OnClick="BtnSalir_Click" 
        />
    </div>

</asp:Content>

