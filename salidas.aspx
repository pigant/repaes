<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="salidas.aspx.cs" Inherits="salidas" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="salidas-menu">
        <asp:TextBox 
            ID="TxtBuscar" 
            runat="server" >
        </asp:TextBox>
        <asp:ListBox 
            ID="ListPatentes" 
            runat="server" 
            DataSourceID="ObjectDataSource1" 
            DataTextField="Plate" DataValueField="IdRecord">
        </asp:ListBox>
        <asp:Button 
            ID="BtnRegistrar" 
            runat="server" 
            Text="Registrar salida" 
            OnClick="BtnRegistrar_Click" 
        />
        <asp:Button 
            ID="BtnVolver" 
            runat="server" 
            Text="Volver" 
            OnClick="BtnVolver_Click" />
        <asp:ObjectDataSource 
            ID="ObjectDataSource1" 
            runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetRecords" TypeName="metodos">
        </asp:ObjectDataSource>
    </div>
</asp:Content>

