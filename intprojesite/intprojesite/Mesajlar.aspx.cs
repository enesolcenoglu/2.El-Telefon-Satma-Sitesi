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
    public partial class Mesajlar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // SqlCommand nesnesi oluşturuluyor ve sorgu metni parametre olarak veriliyor
            SqlCommand baglan = new SqlCommand("Select * from Tableiletisim", SqlConnectionClass.connection);

            // Bağlantının durumunu kontrol etmek için SqlConnectionClass sınıfındaki CheckConnection metodu çağrılıyor
            SqlConnectionClass.CheckConnection();

            // SqlDataReader nesnesi oluşturuluyor ve sorgunun sonucunu okumak için baglan.ExecuteReader metodu çağrılıyor
            SqlDataReader dr = baglan.ExecuteReader();

            // DataList1 veri kaynağı olarak SqlDataReader nesnesi atanıyor
            DataList1.DataSource = dr;

            // Verileri DataList1 veri listesine bağlamak için DataBind metodu çağrılıyor
            DataList1.DataBind();

            // SqlDataReader nesnesi kapatılıyor
            dr.Close();
        }
    }
}