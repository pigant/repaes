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
        DataSourceID="SqlDataSource1" AutoGenerateColumns="False">
        <Columns>
            <asp:BoundField DataField="Plate" HeaderText="Plate" SortExpression="Plate" />
            <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
            <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
            <asp:BoundField DataField="GateIn" HeaderText="GateIn" SortExpression="GateIn" />
            <asp:BoundField DataField="GateOut" HeaderText="GateOut" SortExpression="GateOut" />
            <asp:BoundField DataField="IdUser" HeaderText="IdUser" SortExpression="IdUser" />
        </Columns>
    </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;MultipleActiveResultSets=True;Application Name=EntityFramework" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [Plate], [FirstName], [LastName], [GateIn], [GateOut], [IdUser] FROM [Record] ORDER BY [GateIn] DESC"></asp:SqlDataSource>
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

