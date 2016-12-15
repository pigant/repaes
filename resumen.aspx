<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="resumen.aspx.cs" Inherits="resumen" %>

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
        DataSourceID="ObjectDataSource1" AutoGenerateColumns="False">
        <Columns>
            <asp:BoundField DataField="Plate" HeaderText="Patente" SortExpression="Plate" />
            <asp:BoundField DataField="LastName" HeaderText="Apellido" SortExpression="LastName" />
            <asp:BoundField DataField="FirstName" HeaderText="Nombre" SortExpression="FirstName" />
            <asp:BoundField DataField="GateIn" HeaderText="Ingreso" SortExpression="GateIn" />
            <asp:BoundField DataField="GateOut" HeaderText="Salida" SortExpression="GateOut" />
            <asp:TemplateField HeaderText="Guardia" SortExpression="IdUser">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("IdUser") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("User.Username") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
    <br />
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetRecordsFecha" TypeName="metodos">
            <SelectParameters>
                <asp:ControlParameter ControlID="CalSalida" DefaultValue="DateTime.now" Name="FechaSel" PropertyName="SelectedDate" Type="DateTime" />
            </SelectParameters>
        </asp:ObjectDataSource>
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

