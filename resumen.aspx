﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="resumen.aspx.cs" Inherits="resumen" %>

    <asp:Content 
        ID="Content1" 
        ContentPlaceHolderID="head" 
        Runat="Server">
    </asp:Content>
    <asp:Content 
        ID="Content2" 
        ContentPlaceHolderID="ContentPlaceHolder1" 
        Runat="Server">
        <asp:Calendar 
        ID="CalSalida" 
        runat="server" 
        Height="64px" 
        Width="175px">
    </asp:Calendar>
    <asp:GridView 
        ID="GridResumen" 
        runat="server" 
        Width="691px" 
        DataSourceID="ObjectDataSource1">
    </asp:GridView>
        <asp:ObjectDataSource 
            ID="ObjectDataSource1" 
            runat="server">
        </asp:ObjectDataSource>
    <br />
    <br />
    <asp:Button 
        ID="BtnImprimir" 
        runat="server" 
        Height="45px" 
        Text="Imprimir" 
        Width="345px" />
    &nbsp;
    <asp:Button 
        ID="BtnVolver" 
        runat="server" 
        Height="45px" 
        Text="Volver" 
        Width="345px" 
     />
     <br />
     <br />
</asp:Content>

