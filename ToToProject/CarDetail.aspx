<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CarDetail.aspx.cs" Inherits="ToToProject.CarDetail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="center-block" style="text-align: center">

        <asp:GridView ID="GridView2" CssClass="GridPosition" 
            runat="server" AutoGenerateColumns="False" Height="173px" HorizontalAlign="Center" Width="600px" CellPadding="3" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellSpacing="2">

            <AlternatingRowStyle HorizontalAlign="left" />
            <Columns>
                <asp:BoundField DataField="CarID" HeaderText="CarID" InsertVisible="False" ReadOnly="True" />
                <asp:BoundField DataField="CarModel" HeaderText="Model" />
                <asp:BoundField DataField="CarYear" HeaderText="Year" />
                <asp:BoundField DataField="Price" HeaderText="Price" />
                <asp:BoundField DataField="CarDesc" HeaderText="Description" />                
                <asp:BoundField DataField="CarStatus" HeaderText="Status" />
            </Columns>
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            
            <SortedAscendingCellStyle BackColor="#FFF1D4" />
            <SortedAscendingHeaderStyle BackColor="#B95C30" />
            <SortedDescendingCellStyle BackColor="#F1E5CE" />
            <SortedDescendingHeaderStyle BackColor="#93451F" />
        </asp:GridView>

       <div style="width:200px;margin-left:auto;margin-right:auto">
           <p>Start Date:</p>
        <asp:Calendar ID="Calendar1" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" Width="220px" DayNameFormat="Shortest" ShowGridLines="True">
            <DayHeaderStyle Font-Bold="True" BackColor="#FFCC66" Height="1px" />
            <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
            <OtherMonthDayStyle ForeColor="#CC9966" />
            <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
            <SelectorStyle BackColor="#FFCC66" />
            <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
            <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
            </asp:Calendar>
       
           <p>End Date:</p>
        <asp:Calendar ID="Calendar2" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" Width="220px" DayNameFormat="Shortest" ShowGridLines="True">
            <DayHeaderStyle Font-Bold="True" BackColor="#FFCC66" Height="1px" />
            <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
            <OtherMonthDayStyle ForeColor="#CC9966" />
            <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
            <SelectorStyle BackColor="#FFCC66" />
            <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
            <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
            </asp:Calendar>


 


        <asp:Button ID="Rent" runat="server" Text="Rent a Car" OnClick="Rent_Click" />
    </div>

     </div>
</asp:Content>
