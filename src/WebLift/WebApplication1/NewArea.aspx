<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="NewArea.aspx.cs" Inherits="WebApplication1.NewArea" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

 <h2>
        Новый участок
    </h2>

    <table border="0" cellpadding="4" cellspacing="0">
        <tr>

            <td>
                <asp:Label ID="Label4" runat="server" Text="Номер участка"></asp:Label> 
            </td>
            <td>
                <asp:TextBox ID="TextBoxAreaName" runat="server"></asp:TextBox>
            </td>
         </tr>
        <tr>
            <td>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" SelectCommand="SELECT Name FROM AreaTable" ProviderName="System.Data.SqlClient"> </asp:SqlDataSource>
            </td>
            <td>
            </td>
            <td>
                <asp:Button ID="ButtonSave" runat="server" Text="Сохранить" 
                    onclick="ButtonSave_Click" />
            </td>
         </tr>      
    </table>
</asp:Content>
