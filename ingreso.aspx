<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ingreso.aspx.cs" Inherits="ingreso" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <br />
        <asp:TextBox 
            ID="TxtNombre" 
            runat="server" 
            Height="24px" 
            Width="330px"></asp:TextBox>
        <br />
        <br />
        <asp:TextBox 
            ID="TxtApellido" 
            runat="server" 
            Height="27px" 
            Width="328px"></asp:TextBox>
        <br />
        <br />
        <asp:TextBox 
            ID="TxtPatente" 
            runat="server" 
            Height="24px" 
            Width="328px"></asp:TextBox>
        <br />
        <br />
        <asp:Button 
            ID="BtnIngresar" 
            runat="server" 
            Height="34px" 
            OnClick="Button1_Click" 
            Text="Ingresar" 
            Width="231px" 
         />
        &nbsp;
        <asp:Button 
            ID="BtnVolver" 
            runat="server" 
            Height="34px" 
            OnClick="Button2_Click" 
            style="margin-top: 0px" 
            Text="Volver" 
            Width="226px" 
        />
        <br />
        <br />        
</asp:Content>

