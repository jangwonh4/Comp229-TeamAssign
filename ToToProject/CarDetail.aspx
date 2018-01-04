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

     <div ID="editbtndiv" runat="server" class ="divBody" visible="true">
            <asp:Button ID="showdivbtn" runat="server" Text="Add a Game" OnClick="showdivbtn_Click" />
        </div>
        <div ID="editdiv" runat="server" class ="divBody" visible="false">
        <p>Add Car</p>
        <p>Car Name:<asp:TextBox ID="namebx" runat="server"></asp:TextBox>
        </p>
        <p>Car Description:<asp:TextBox ID="descbx" runat="server" Width="288px" Height="93px" TextMode="MultiLine"></asp:TextBox>
        </p>
        <p>Car Published:<asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="200px" Width="220px">
            <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
            <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
            <OtherMonthDayStyle ForeColor="#999999" />
            <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
            <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
            <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
            <WeekendDayStyle BackColor="#CCCCFF" />
            </asp:Calendar>
        </p>
        <p>
            <asp:Button ID="addbtn" runat="server" OnClick="addbtn_Click" Text="Add Game" />
        </p>
            </div>
</asp:Content>
