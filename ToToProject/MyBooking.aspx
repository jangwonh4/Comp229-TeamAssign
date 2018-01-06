<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MyBooking.aspx.cs" Inherits="ToToProject.MyBooking" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
        <br />
    <br />
    <div class="center-block">
        <p>My Booking List</p>
        <asp:GridView ID="BookingList" CssClass="GridPosition" 
            runat="server" AutoGenerateColumns="False" Height="173px" HorizontalAlign="Center" Width="600px" CellPadding="3" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellSpacing="2">

            <AlternatingRowStyle HorizontalAlign="left" />
            <Columns>
             
                <asp:BoundField DataField="CarModel" HeaderText="CarID" InsertVisible="False" ReadOnly="True" />
                <asp:BoundField DataField="DateStart" HeaderText="Stat Date" />
                <asp:BoundField DataField="DateEnd" HeaderText="End Date" />
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
