using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using intprojesite.Classes;

namespace intprojesite
{
    public partial class TelOnay : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int selectedID = Convert.ToInt32(Request.QueryString["Telid"]);

            SqlCommand telonay = new SqlCommand("Update TableTelefon set TelOnay=@pOnay where TelefonID=@pTid", SqlConnectionClass.connection);
            SqlConnectionClass.CheckConnection();

            telonay.Parameters.AddWithValue("@pOnay", true);
            telonay.Parameters.AddWithValue("@pTid", selectedID);

            telonay.ExecuteNonQuery();

            Response.Redirect("AdminOnay.aspx");

        }
    }
}