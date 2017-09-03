<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication1._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>Adress-Liste</h1>
        <p>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="Info" />
        </p>
        <p class="lead">Kontakt-Daten<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AdressenAccess %>" ProviderName="<%$ ConnectionStrings:AdressenAccess.ProviderName %>" SelectCommand="SELECT [ID], [FamilienName], [Vorname], [Strasse], [PLZ], [Ort], [Kommentar] FROM [Adressen]" OldValuesParameterFormatString="original_{0}" DeleteCommand="DELETE FROM [Adressen] WHERE [ID] = ?" InsertCommand="INSERT INTO [Adressen] ([ID], [FamilienName], [Vorname], [Strasse], [PLZ], [Ort], [Kommentar]) VALUES (?, ?, ?, ?, ?, ?, ?)" UpdateCommand="UPDATE [Adressen] SET [FamilienName] = ?, [Vorname] = ?, [Strasse] = ?, [PLZ] = ?, [Ort] = ?, [Kommentar] = ? WHERE [ID] = ?">
            <DeleteParameters>
                <asp:Parameter Name="original_ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ID" Type="Int32" />
                <asp:Parameter Name="FamilienName" Type="String" />
                <asp:Parameter Name="Vorname" Type="String" />
                <asp:Parameter Name="Strasse" Type="String" />
                <asp:Parameter Name="PLZ" Type="Int32" />
                <asp:Parameter Name="Ort" Type="String" />
                <asp:Parameter Name="Kommentar" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="FamilienName" Type="String" />
                <asp:Parameter Name="Vorname" Type="String" />
                <asp:Parameter Name="Strasse" Type="String" />
                <asp:Parameter Name="PLZ" Type="Int32" />
                <asp:Parameter Name="Ort" Type="String" />
                <asp:Parameter Name="Kommentar" Type="String" />
                <asp:Parameter Name="original_ID" Type="Int32" />
            </UpdateParameters>
            </asp:SqlDataSource>
        </p>
        <p>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                    <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                    <asp:BoundField DataField="FamilienName" HeaderText="FamilienName" SortExpression="FamilienName" />
                    <asp:BoundField DataField="Vorname" HeaderText="Vorname" SortExpression="Vorname" />
                    <asp:BoundField DataField="Strasse" HeaderText="Strasse" SortExpression="Strasse" />
                    <asp:BoundField DataField="PLZ" HeaderText="PLZ" SortExpression="PLZ" />
                    <asp:BoundField DataField="Ort" HeaderText="Ort" SortExpression="Ort" />
                    <asp:BoundField DataField="Kommentar" HeaderText="E-Mail" SortExpression="Kommentar" />
                </Columns>
            </asp:GridView>
        </p>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringDetails %>" DeleteCommand="DELETE FROM [Adressen] WHERE [ID] = ?" InsertCommand="INSERT INTO [Adressen] ([ID], [FamilienName], [Vorname], [Strasse], [PLZ], [Ort], [Kommentar]) VALUES (?, ?, ?, ?, ?, ?, ?)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:ConnectionStringDetails.ProviderName %>" SelectCommand="SELECT [ID], [FamilienName], [Vorname], [Strasse], [PLZ], [Ort], [Kommentar] FROM [Adressen] WHERE ([ID] = ?)" UpdateCommand="UPDATE [Adressen] SET [FamilienName] = ?, [Vorname] = ?, [Strasse] = ?, [PLZ] = ?, [Ort] = ?, [Kommentar] = ? WHERE [ID] = ?">
            <DeleteParameters>
                <asp:Parameter Name="original_ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ID" Type="Int32" />
                <asp:Parameter Name="FamilienName" Type="String" />
                <asp:Parameter Name="Vorname" Type="String" />
                <asp:Parameter Name="Strasse" Type="String" />
                <asp:Parameter Name="PLZ" Type="Int32" />
                <asp:Parameter Name="Ort" Type="String" />
                <asp:Parameter Name="Kommentar" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="GridView1" Name="ID" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="FamilienName" Type="String" />
                <asp:Parameter Name="Vorname" Type="String" />
                <asp:Parameter Name="Strasse" Type="String" />
                <asp:Parameter Name="PLZ" Type="Int32" />
                <asp:Parameter Name="Ort" Type="String" />
                <asp:Parameter Name="Kommentar" Type="String" />
                <asp:Parameter Name="original_ID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
        <br />
    
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4" DataKeyNames="ID" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" Height="50px" Width="208px">
            <AlternatingRowStyle BackColor="White" />
            <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
            <EditRowStyle BackColor="#2461BF" />
            <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
            <Fields>
                <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" />
                <asp:BoundField DataField="FamilienName" HeaderText="FamilienName" SortExpression="FamilienName" />
                <asp:BoundField DataField="Vorname" HeaderText="Vorname" SortExpression="Vorname" />
                <asp:BoundField DataField="Strasse" HeaderText="Strasse" SortExpression="Strasse" />
                <asp:BoundField DataField="PLZ" HeaderText="PLZ" SortExpression="PLZ" />
                <asp:BoundField DataField="Ort" HeaderText="Ort" SortExpression="Ort" />
                <asp:BoundField DataField="Kommentar" HeaderText="E-Mail" SortExpression="Kommentar" />
                <asp:CommandField ShowEditButton="True" ShowInsertButton="True" />
            </Fields>
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
        </asp:DetailsView>
        <br />
    </div>

    <div class="row">
        <div class="col-md-4">
            <p>
                &nbsp;</p>
            <p>
                &nbsp;</p>
        </div>
    </div>

</asp:Content>
