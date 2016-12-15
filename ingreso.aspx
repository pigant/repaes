<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ingreso.aspx.cs" Inherits="ingreso" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="form-ingreso">
        <asp:TextBox 
            ID="TxtNombre" 
            runat="server" 
            Height="25px"
            Width="330px"></asp:TextBox>
        <asp:TextBox 
            ID="TxtApellido" 
            runat="server" 
            Height="27px" 
            Width="330px"></asp:TextBox>
        <asp:TextBox 
            ID="TxtPatente" 
            runat="server" 
            Height="25px" 
            Width="330px"></asp:TextBox>
        <asp:Button 
            ID="BtnIngresar" 
            runat="server" 
            Height="45px" 
            OnClick="Button1_Click" 
            Text="Ingresar" 
            Width="345px" 
         />
        <asp:Button 
            ID="BtnVolver" 
            runat="server" 
            Height="45px" 
            OnClick="Button2_Click" 
            style="margin-top: 0px" 
            Text="Volver" 
            Width="345px" 
        />
    </div>
    <script>
        document.getElementById('<%= TxtNombre.ClientID %>').placeholder = "Ingrese nombre";
        document.getElementById('<%= TxtApellido.ClientID %>').placeholder = "Ingrese apellido";
        document.getElementById('<%= TxtPatente.ClientID %>').placeholder = "Ingrese patente";
    </script>
</asp:Content>

