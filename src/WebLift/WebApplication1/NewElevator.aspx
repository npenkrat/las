<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="NewElevator.aspx.cs" Inherits="WebApplication1.NewElevator" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>
        Новый лифт
    </h2>

    <table border="0" cellpadding="4" cellspacing="0">
        <tr>
            <td>
                <asp:Label ID="Label14" runat="server" Text="Улица"></asp:Label> 
            </td>
            <td>
                <asp:DropDownList ID="DropDownListStreet" runat="server" 
                    AutoPostBack="True">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>Львовская</asp:ListItem>
                    <asp:ListItem>Гоголя</asp:ListItem>
                </asp:DropDownList>
            </td>
         </tr>
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Номер дома"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownListHouse" runat="server" 
                    AutoPostBack="True">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>11</asp:ListItem>
                    <asp:ListItem>12</asp:ListItem>
                </asp:DropDownList>
            </td>
         </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Корпус"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownListНousing" runat="server"   AutoPostBack="True">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                </asp:DropDownList>
            </td>
         </tr>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Парадная"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownListFront" runat="server" 
                    AutoPostBack="True">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                </asp:DropDownList>
            </td>
         </tr>
        <tr>
            <td>
                <asp:Label ID="Label4" runat="server" Text="Рег. номер лифта"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownListIDElevator" runat="server" 
                    AutoPostBack="True">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                </asp:DropDownList>
            </td>
         </tr>
        <tr>
            <td>
                <asp:Label ID="Label5" runat="server" Text="Зав. номер лифта"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownListFactoryIDElevator" runat="server" 
                    AutoPostBack="True">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                </asp:DropDownList>
            </td>
         </tr>
        <tr>
            <td>
                <asp:Label ID="Label6" runat="server" Text="Внутренний номер или название лифта"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownListElevatorName" runat="server" 
                    AutoPostBack="True">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                </asp:DropDownList>
            </td>
         </tr>
        <tr>
            <td>
                <asp:Label ID="Label7" runat="server" Text="Тип лифта"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownListElevatorType" runat="server" 
                    AutoPostBack="True">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                </asp:DropDownList>
            </td>
         </tr>
        <tr>
            <td>
                <asp:Label ID="Label8" runat="server" Text="Грузоподъемность"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
         </tr>
        <tr>
            <td>
                <asp:Label ID="Label9" runat="server" Text="Количество остановок"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
         </tr>
        <tr>
            <td>
                <asp:Label ID="Label10" runat="server" Text="Дата годового освидетельствования"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
         </tr>
        <tr>
            <td>
                <asp:Label ID="Label13" runat="server" Text="Условия по договору о времени выполнения аварийной заявки"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
         </tr>
        <tr>
            <td>
                <asp:Label ID="Label11" runat="server" Text="Заказчик"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" 
                    AutoPostBack="True">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>ООО Жилкомсервис</asp:ListItem>
                    <asp:ListItem>ОАО Теремок</asp:ListItem>
                </asp:DropDownList>
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
