<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ingreso.aspx.cs" Inherits="ingreso" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="form-ingreso">
        <asp:TextBox 
            ID="TxtNombre" 
            runat="server"></asp:TextBox>
        <asp:TextBox 
            ID="TxtApellido" 
            runat="server" ></asp:TextBox>
        <asp:TextBox 
            ID="TxtPatente" 
            runat="server"></asp:TextBox>
        <asp:Button 
            ID="BtnIngresar" 
            runat="server" 
            OnClick="Button1_Click" 
            Text="Ingresar" 
         />
        <asp:Button 
            ID="BtnVolver" 
            runat="server" 
            OnClick="Button2_Click" 
            style="margin-top: 0px" 
            Text="Volver" 
        />
    </div>
    <script>
        document.getElementById('<%= TxtNombre.ClientID %>').placeholder = "Ingrese nombre";
        document.getElementById('<%= TxtApellido.ClientID %>').placeholder = "Ingrese apellido";
        document.getElementById('<%= TxtPatente.ClientID %>').placeholder = "Ingrese patente";
    </script>
</asp:Content>

