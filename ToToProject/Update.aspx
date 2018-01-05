<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Update.aspx.cs" Inherits="ToToProject.Update" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div ID="editbtndiv" runat="server" class ="divBody" visible="true">
        </div>
        <div ID="editdiv" runat="server" class ="divBody" visible="true">
        <p>Add Car</p>
        <p>Car Name:<asp:TextBox ID="namebox" runat="server"></asp:TextBox>
        <p>Year:<asp:TextBox ID="yearbox" runat="server"></asp:TextBox>
        </p>
            <p>Year:<asp:TextBox ID="pricebox" runat="server"></asp:TextBox>
        </p>
        <p>Car Description:<asp:TextBox ID="descbox" runat="server" Width="288px" Height="93px" TextMode="MultiLine"></asp:TextBox>
        </p>
        
        <p>
            <asp:Button CssClass="btn" ID="btnAdd" runat="server" OnClick="addbtn_Click" Text="Add Car" />
        </p>
            </div>
</asp:Content>
