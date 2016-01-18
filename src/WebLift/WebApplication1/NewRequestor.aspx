<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="NewRequestor.aspx.cs" Inherits="WebApplication1.NewRequestor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>
        Новый заказчик
    </h2>

    <table border="0" cellpadding="4" cellspacing="0">
        <tr>
            <td>
                <asp:Label ID="Label12" runat="server" Text="Наименование"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            </td>
         </tr>
        <tr>
            <td>
                <asp:Label ID="Label14" runat="server" Text="Улица"></asp:Label> 
            </td>
            <td>
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            </td>
         </tr>
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Номер дома"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
            </td>
         </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Корпус"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
            </td>
         </tr>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Офис"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
            </td>
         </tr>
        <tr>
            <td>
                <asp:Label ID="Label4" runat="server" Text="Телефон"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
            </td>
         </tr>
        <tr>
            <td>
                <asp:Label ID="Label5" runat="server" Text="Электронный адрес"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
            </td>
         </tr>
        <tr>
            <td>
            </td>
            <td>
            </td>
            <td>
                <asp:Button ID="ButtonSave" runat="server" Text="Сохранить" />
            </td>
         </tr>
    </table>
</asp:Content>
