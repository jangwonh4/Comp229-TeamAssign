<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CarDetail.aspx.cs" Inherits="ToToProject.CarDetail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="center-block">

        <asp:GridView ID="GridView2" CssClass="GridPosition" AutoGenerateSelectButton="True" OnSelectedIndexChanged="GridView2_SelectedIndexChanged"
            runat="server" AutoGenerateColumns="False" Height="173px" HorizontalAlign="Center" Width="600px" CellPadding="3" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellSpacing="2">

            <AlternatingRowStyle HorizontalAlign="Center" />
            <Columns>
                <asp:BoundField DataField="CarID" HeaderText="CarID" InsertVisible="False" ReadOnly="True" />
                <asp:BoundField DataField="CarModel" HeaderText="Model" />
                <asp:BoundField DataField="CarYear" HeaderText="Year" />
                <asp:BoundField DataField="CarDesc" HeaderText="Description" />
                <asp:BoundField DataField="DatePublished" HeaderText="Date" />
                <asp:BoundField DataField="CarStatus" HeaderText="Status" />
            </Columns>
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FFF1D4" />
            <SortedAscendingHeaderStyle BackColor="#B95C30" />
            <SortedDescendingCellStyle BackColor="#F1E5CE" />
            <SortedDescendingHeaderStyle BackColor="#93451F" />
        </asp:GridView>



    </div>

     
</asp:Content>
