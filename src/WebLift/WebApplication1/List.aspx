<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="List.aspx.cs" Inherits="WebApplication1.WebForm1" %>
<%@ Register assembly="DevExpress.Web.ASPxGridView.v10.1, Version=10.1.12.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGridView" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.ASPxEditors.v10.1, Version=10.1.12.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h2>
        Список заявок
    </h2>
    <asp:GridView ID="GridViewList" runat="server" AllowSorting="True" AutoGenerateColumns="True">
    </asp:GridView>


    <dx:ASPxGridView ID="ASPxGridViewList" Width="100%" runat="server" 
        Caption="Список заявок">
        <Settings ShowHorizontalScrollBar="True" ShowVerticalScrollBar="True" />

    </dx:ASPxGridView>


</asp:Content>
