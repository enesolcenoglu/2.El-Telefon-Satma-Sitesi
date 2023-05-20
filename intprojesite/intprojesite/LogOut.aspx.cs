using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace intprojesite
{
    public partial class LogOut : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Session'ı sonlandırır
            Session.Abandon();

            // Tüm Request çerezlerini temizler
            Request.Cookies.Clear();

            // FormsAuthentication ile oturumu sonlandırır
            FormsAuthentication.SignOut();

            // Kullanıcıyı "Login.aspx" sayfasına yönlendirir
            Response.Redirect("Login.aspx");
        }
    }
}