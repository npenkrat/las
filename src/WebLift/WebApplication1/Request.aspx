<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Request.aspx.cs" Inherits="WebApplication1.Request" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h2>
        Новая заявка
    </h2>

    <table border="0" cellpadding="4" cellspacing="0">
        <tr>
            <td>
                <asp:Label ID="Label14" runat="server" Text="Улица"></asp:Label> 
            </td>
            <td>
                <asp:DropDownList ID="DropDownListStreet" runat="server" 
                    onselectedindexchanged="DropDownListStreet_SelectedIndexChanged" 
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
                    onselectedindexchanged="DropDownListHouse_SelectedIndexChanged" 
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
                <asp:DropDownList ID="DropDownListНousing" runat="server" 
                    onselectedindexchanged="DropDownListНousing_SelectedIndexChanged" AutoPostBack="True">
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
                    onselectedindexchanged="DropDownListFront_SelectedIndexChanged" 
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
                    onselectedindexchanged="DropDownListIDElevator_SelectedIndexChanged" 
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
                    onselectedindexchanged="DropDownListFactoryIDElevator_SelectedIndexChanged" 
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
                    onselectedindexchanged="DropDownListElevatorName_SelectedIndexChanged"
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
                <asp:Label ID="Label7" runat="server" Text="Заявитель"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownListRequester" runat="server" 
                    onselectedindexchanged="DropDownListRequester_SelectedIndexChanged" 
                    AutoPostBack="True">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>ЖЕК</asp:ListItem>
                    <asp:ListItem>Физ лицо</asp:ListItem>
                </asp:DropDownList>
            </td>
         </tr>
        <tr>
            <td>
                <asp:Label ID="Label8" runat="server" Text="Телефон заявителя"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
         </tr>
        <tr>
            <td>
                <asp:Label ID="Label9" runat="server" Text="Время и дата поступления заявки"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
         </tr>
        <tr>
            <td>
                <asp:Label ID="Label10" runat="server" Text="Время и дата передачи заявки"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
         </tr>
        <tr>
            <td>
                <asp:Label ID="Label11" runat="server" Text="Кому передана заявка. Имя механика"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownListMechanic" runat="server" 
                    onselectedindexchanged="DropDownListMechanic_SelectedIndexChanged"
                    AutoPostBack="True">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>Смирнов</asp:ListItem>
                    <asp:ListItem>Иванов</asp:ListItem>
                </asp:DropDownList>
            </td>
         </tr>
        <tr>
            <td>
                <asp:Label ID="Label12" runat="server" Text="Причина вызова"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownListReasonOfRequest" runat="server" 
                    onselectedindexchanged="DropDownListReasonOfRequest_SelectedIndexChanged" 
                    AutoPostBack="True">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>Не работает лифт</asp:ListItem>
                    <asp:ListItem>Застряли пассажиры</asp:ListItem>
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
