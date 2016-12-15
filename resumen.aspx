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
        <div class="columna">
        <div class="fila">
        <asp:Calendar 
        ID="CalSalida" 
        runat="server" 
        Height="190px" 
        Width="350px" OnSelectionChanged="CalSalida_SelectionChanged" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" NextPrevFormat="FullMonth">
            <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
            <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
            <OtherMonthDayStyle ForeColor="#999999" />
            <SelectedDayStyle BackColor="#333399" ForeColor="White" />
            <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
            <TodayDayStyle BackColor="#CCCCCC" />
    </asp:Calendar>
    </div>
    <div class="fila">
    <asp:GridView 
        ID="GridResumen" 
        runat="server" 
        Width="691px" 
        DataSourceID="ObjectDataSource1" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField 
                DataField="Plate" 
                HeaderText="Patente" 
                SortExpression="Plate" />
            <asp:BoundField 
                DataField="LastName" 
                HeaderText="Apellido" 
                SortExpression="LastName" />
            <asp:BoundField 
                DataField="FirstName" 
                HeaderText="Nombre" 
                SortExpression="FirstName" />
            <asp:BoundField 
                DataField="GateIn" 
                HeaderText="Ingreso" 
                SortExpression="GateIn" />
            <asp:BoundField 
                DataField="GateOut" 
                HeaderText="Salida" 
                SortExpression="GateOut" />
            <asp:TemplateField 
                HeaderText="Guardia" 
                SortExpression="IdUser">
                <EditItemTemplate>
                    <asp:TextBox 
                        ID="TextBox1" 
                        runat="server" 
                        Text='<%# Bind("IdUser") %>'>
                    </asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label 
                        ID="Label1" 
                        runat="server" 
                        Text='<%# Bind("User.Username") %>'>
                    </asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
    </div>
    <div class="fila">
    <br />
        <asp:ObjectDataSource 
            ID="ObjectDataSource1" 
            runat="server" 
            OldValuesParameterFormatString="original_{0}" 
            SelectMethod="GetRecordsFecha" 
            TypeName="metodos">
            <SelectParameters>
                <asp:ControlParameter 
                    ControlID="CalSalida"
                    Name="FechaSel" 
                    PropertyName="SelectedDate" 
                    Type="DateTime" />
            </SelectParameters>
        </asp:ObjectDataSource>
    </div>
    <div class="fila">
    <asp:Button 
        ID="BtnImprimir" 
        runat="server" 
        Text="Imprimir" OnClientClick="imprimir()"/>
    &nbsp;
    <asp:Button 
        ID="BtnVolver" 
        runat="server" 
        Text="Volver" OnClick="BtnVolver_Click"/>
    </div>
    </div>
    <script>var imprimir = print;
    </script>
</asp:Content>

