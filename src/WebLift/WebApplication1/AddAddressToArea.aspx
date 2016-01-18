<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddAddressToArea.aspx.cs" Inherits="WebApplication1.AddAddressToArea" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>
        Добавить новый адрес к участку
    </h2>

    <table border="0" cellpadding="4" cellspacing="0">
        <tr>

            <td>
                <asp:Label ID="Label4" runat="server" Text="Номер участка"></asp:Label> 
            </td>
            <td>
                <asp:DropDownList ID="DropDownListArea" runat="server" 
                    AutoPostBack="True">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                </asp:DropDownList>
            </td>
         </tr>
        <tr>

            <td>
                <asp:Label ID="Label14" runat="server" Text="Улица"></asp:Label> 
            </td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
         </tr>
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Номер дома"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            </td>
         </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Корпус"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            </td>
         </tr>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Парадная"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
            </td>
         </tr>
               <tr>
            <td>
            </td>
            <td>
            </td>
            <td>
                <asp:Button ID="ButtonSave" runat="server" Text="Добавить" 
                    onclick="ButtonSave_Click" />
            </td>
         </tr>
    </table>
</asp:Content>
