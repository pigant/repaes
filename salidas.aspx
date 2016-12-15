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
    <script>
    var cosas = [];
    var cosasFiltradas = [];
    var filtro = document.getElementById('<%= TxtBuscar.ClientID %>');
    var select = document.querySelector("select");
    var options = select.querySelectorAll("option");
    options.forEach( o => { cosas.push({id: o.value, name: o.innerHTML}); });
    filtro.onkeyup = function() {
        if (filtro.value !== ""){
            cosasFiltradas = cosas.filter( a => a.name.includes(filtro.value));
            borrarSelect();
            cosasFiltradas.forEach( cf => agregarOption(cf.id, cf.name));
        }else{
            borrarSelect();
            cosas.forEach( cf => agregarOption(cf.id, cf.name));
        }
    }
    var borrarSelect = function(){
        var fc = select.firstChild;
        while( fc ) {
            select.removeChild( fc );
            fc = select.firstChild;
        }
    }
    var agregarOption = function(id, nombre){
        let o = document.createElement("option");
        o.value = id;
        o.text = nombre;
        select.appendChild(o);
    }
    </script>
</asp:Content>

