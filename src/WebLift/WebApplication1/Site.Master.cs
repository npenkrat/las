using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class SiteMaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           // NavigationMenu.Visible = Page.User.Identity.IsAuthenticated;
            NavigationMenu.Visible = false;

    /*
            <asp:MenuItem NavigateUrl="~/Default.aspx" Text="Главная"/>
            <asp:MenuItem NavigateUrl="~/List.aspx" Text="Список заявок"/>
            <asp:MenuItem NavigateUrl="~/Request.aspx" Text="Добавить заявку"/>
            <asp:MenuItem NavigateUrl="~/NewElevator.aspx" Text="Добавить лифт"  />
            <asp:MenuItem NavigateUrl="~/NewArea.aspx" Text="Создать участок"/>
            <asp:MenuItem NavigateUrl="~/AddAddressToArea.aspx" Text="Добавить новый адрес к участку"/>
            <asp:MenuItem NavigateUrl="~/NewRequestor.aspx" Text="Добавить заказчика"/>
            <asp:MenuItem NavigateUrl="~/About.aspx" Text="Обратная связь"/>
        */
            if (Page.User.IsInRole("Admin")) 
            {
                NavigationMenu.Visible = true;
                /*
                    <asp:MenuItem NavigateUrl="~/List.aspx" Text="Список заявок"/>
                    <asp:MenuItem NavigateUrl="~/Request.aspx" Text="Добавить заявку"/>
                    <asp:MenuItem NavigateUrl="~/NewElevator.aspx" Text="Добавить лифт"  />
                    <asp:MenuItem NavigateUrl="~/NewArea.aspx" Text="Создать участок"/>
                    <asp:MenuItem NavigateUrl="~/AddAddressToArea.aspx" Text="Добавить новый адрес к участку"/>
                    <asp:MenuItem NavigateUrl="~/NewRequestor.aspx" Text="Добавить заказчика"/>
                    <asp:MenuItem NavigateUrl="~/About.aspx" Text="Обратная связь"/>
                 */
                MenuItem tmp = new MenuItem("Список заявок", "", "", "~/List.aspx");
                NavigationMenu.Items.Add(tmp);
                tmp = new MenuItem("Добавить заявку", "", "", "~/Request.aspx");
                NavigationMenu.Items.Add(tmp);
                tmp = new MenuItem("Добавить лифт", "", "", "~/NewElevator.aspx");
                NavigationMenu.Items.Add(tmp);
                tmp = new MenuItem("Создать участок", "", "", "~/NewArea.aspx");
                NavigationMenu.Items.Add(tmp);
                tmp = new MenuItem("Добавить новый адрес к участку", "", "", "~/AddAddressToArea.aspx");
                NavigationMenu.Items.Add(tmp);
                tmp = new MenuItem("Добавить заказчика", "", "", "~/NewRequestor.aspx");
                NavigationMenu.Items.Add(tmp);
                tmp = new MenuItem("Обратная связь", "", "", "~/About.aspx");
                NavigationMenu.Items.Add(tmp); 
            }
            else if (Page.User.IsInRole("User"))
            {
                NavigationMenu.Visible = true;

                MenuItem tmp = new MenuItem("Список заявок", "", "", "~/List.aspx");
                NavigationMenu.Items.Add(tmp);
                tmp = new MenuItem("Обратная связь", "", "", "~/About.aspx");
                NavigationMenu.Items.Add(tmp); 
            }
            else 
            {
                NavigationMenu.Visible = Page.User.Identity.IsAuthenticated;
            }


        }
    }
}
