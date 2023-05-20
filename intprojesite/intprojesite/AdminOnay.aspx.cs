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
    public partial class AdminOnay : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // SqlCommand nesnesi oluşturuluyor ve sorgu metni parametre olarak veriliyor
            SqlCommand onay = new SqlCommand("Select * from TableTelefon where TelOnay=@pOnay", SqlConnectionClass.connection);

            // Bağlantının durumunu kontrol etmek için SqlConnectionClass sınıfındaki CheckConnection metodu çağrılıyor
            SqlConnectionClass.CheckConnection();

            // @pOnay parametresi ile TelOnay alanına 'false' değeri atanıyor
            onay.Parameters.AddWithValue("@pOnay", false);

            // Veritabanından verileri okumak için SqlDataReader nesnesi oluşturuluyor
            SqlDataReader dr = onay.ExecuteReader();

            // DataList1 nesnesine SqlDataReader nesnesi atanıyor
            DataList1.DataSource = dr;

            // Veriler DataList1 kontrolünde görüntüleniyor
            DataList1.DataBind();

            // SqlDataReader nesnesi kapatılıyor
            dr.Close();
        }
    }
}